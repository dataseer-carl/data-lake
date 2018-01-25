[Home](../README.md)

# OEC International Trade

[**Source**](https://atlas.media.mit.edu/en/) | [**API Guide**](https://atlas.media.mit.edu/api/) | [**Download**](https://atlas.media.mit.edu/en/resources/data/)

Detailed breakdown of international trade: import and export value per product per bilateral relationship.

## API

### Query

Details on how to construct queries to the API can be found [here](https://atlas.media.mit.edu/api/).

> This is the basic call structure for returning JSON from the data API:
> `/ CLASSIFICATION / TRADE_FLOW / YEAR / ORIGIN / DESTINATION / PRODUCT /`

#### Parameters

The following parameters need to be defined when querying trade data from OEC.  These have been lifted from the [API guide](https://atlas.media.mit.edu/api/).

* __CLASSIFICATION__: Defines which product classification to use.  Can either be `sitc` for the *SITC trade classification* or `hs07` for the *[most recent] Harmonised System trade classification*.  According to the [this wiki](https://en.wikipedia.org/wiki/Standard_International_Trade_Classification): **HS07** is recommended for the collection and compilation of trade statistics.  **SITC**, meanwhile is recommended for analytical purposes.
* __TRADE_FLOW__: Defines which trade value to show; can either be `export` or `import`.
* __YEAR__: Defines either a single year (any year between `1962` and `2015`), or a range of years separated by [comma or dot] (e.g. `2002.2005`).
* __ORIGIN__ and __DESTINATION__: Unique codes to filter data by the origin and destination countries included in the trade.  Can be `show` to show all bilateral countries; `all` for total; or a `3_character_id` which is from the *display_id* attribute in the [reference list for countries](https://atlas.media.mit.edu/attr/country/).  Note: `.../show/show/...` does not work.
* __PRODUCT__: Unique codes to filter the data by product traded.  Can be `show` to show all products; or `all` to use all products in the query.  Can also be a `4_digit_id`.

#### Sample

Here is a sample data call for 2015 Philippine exports to Jamaica per product:

`https://atlas.media.mit.edu/sitc/export/2015/phl/jam/all/`


```
{
  "data": [
    {
      "dest_id": "najam", 
      "import_val": 2253.0, 
      "origin_id": "asphl", 
      "sitc_id": "106289", 
      "sitc_id_len": 6.0, 
      "year": 2015.0
    }, 
    {
      "dest_id": "najam", 
      "import_val": 297.0, 
      "origin_id": "asphl", 
      "sitc_id": "106940", 
      "sitc_id_len": 6.0, 
      "year": 2015.0
    }, 
    {
      "dest_id": "najam", 
      "import_val": 148.0, 
      "origin_id": "asphl", 
      "sitc_id": "106994", 
      "sitc_id_len": 6.0, 
      "year": 2015.0
    },
    ...
    {
      "dest_id": "najam", 
      "import_val": 5805.0, 
      "origin_id": "asphl", 
      "sitc_id": "905823", 
      "sitc_id_len": 6.0, 
      "year": 2015.0
    }
  ]
}
```

### Reference tables

#### Countries

Reference list of countries can be found in `https://atlas.media.mit.edu/attr/country/`.

#### Products

Reference list of products is in `https://atlas.media.mit.edu/attr/sitc/`.

***

## Queries

| Calls |
|:---------|
| `https://atlas.media.mit.edu/sitc/export/YEAR/ORIGIN/show/all/` |
| `https://atlas.media.mit.edu/sitc/export/YEAR/ORIGIN/DESTINATION/all/` |
| `https://atlas.media.mit.edu/attr/country/` |
| `https://atlas.media.mit.edu/attr/sitc/` |


### `https://atlas.media.mit.edu/sitc/export/YEAR/ORIGIN/show/all/`

#### Schema

```
data
|- [partnership]
|   |- "dest_id"
|   |- "export_val"
|   |- "export_val_growth_pct"
|   |- "export_val_growth_pct_5"
|   |- "export_val_growth_val"
|   |- "export_val_growth_val_5"
|   |- "import_val"
|   |- "import_val_growth_pct"
|   |- "import_val_growth_pct_5"
|   |- "import_val_growth_val"
|   |- "import_val_growth_val_5"
|   |- "origin_id"
|   |- "year"
|
...
```

#### Sample

```
{
  "data": [
    {
      "dest_id": "afago", 
      "export_val": 380336.0, 
      "export_val_growth_pct": -0.5327, 
      "export_val_growth_pct_5": -0.0591751, 
      "export_val_growth_val": -433566.0, 
      "export_val_growth_val_5": -23922.0, 
      "import_val": 887363.0, 
      "import_val_growth_pct": 3.27147, 
      "import_val_growth_pct_5": 715.193, 
      "import_val_growth_val": 679621.0, 
      "import_val_growth_val_5": 886124.0, 
      "origin_id": "asphl", 
      "year": 2015.0
    }, 
    {
      "dest_id": "afbdi", 
      "export_val": 42230.0, 
      "export_val_growth_pct": -0.703707, 
      "export_val_growth_pct_5": -0.89554, 
      "export_val_growth_val": -100298.0, 
      "export_val_growth_val_5": -362041.0, 
      "import_val": 17728.0, 
      "import_val_growth_pct_5": -0.971685, 
      "import_val_growth_val": 17728.0, 
      "import_val_growth_val_5": -608365.0, 
      "origin_id": "asphl", 
      "year": 2015.0
    }, 
    ...
    {
      "dest_id": "saven", 
      "export_val": 3173804.0, 
      "export_val_growth_pct": -0.334698, 
      "export_val_growth_pct_5": -0.404826, 
      "export_val_growth_val": -1596667.0, 
      "export_val_growth_val_5": -2158765.0, 
      "import_val": 406110.0, 
      "import_val_growth_pct": 2.27807, 
      "import_val_growth_pct_5": -0.674542, 
      "import_val_growth_val": 282223.0, 
      "import_val_growth_val_5": -841699.0, 
      "origin_id": "asphl", 
      "year": 2015.0
    }
  ]
}
```

#### Remarks

If `show` is used in `.../DESTINATION/...`, using either `import` or `export` for *TRADE_FLOW* yields the same data.

### `https://atlas.media.mit.edu/sitc/export/YEAR/ORIGIN/DESTINATION/all/`

#### Schema

```
data
|- [partnership]
|   |- "dest_id"
|   |- "import_val"
|   |- "origin_id"
|   |- "sitc_id"
|   |- "sitc_id_len"
|   |- "year"
|
...
```

#### Sample

```
{
  "data": [
    {
      "dest_id": "najam", 
      "import_val": 2253.0, 
      "origin_id": "asphl", 
      "sitc_id": "106289", 
      "sitc_id_len": 6.0, 
      "year": 2015.0
    }, 
    {
      "dest_id": "najam", 
      "import_val": 297.0, 
      "origin_id": "asphl", 
      "sitc_id": "106940", 
      "sitc_id_len": 6.0, 
      "year": 2015.0
    }, 
    {
      "dest_id": "najam", 
      "import_val": 5805.0, 
      "origin_id": "asphl", 
      "sitc_id": "905823", 
      "sitc_id_len": 6.0, 
      "year": 2015.0
    }
  ]
}
```

#### Remarks

Product-specific trade is shown only if `3_character_id` is used in both `ORIGIN` and `DESTINATION`.

Result of query will also change depending on whether `export` or `import` is specified in `TRADE_FLOW`.

### `https://atlas.media.mit.edu/attr/country/`

#### Schema

```
data
|- [Continent]
|   |- "color"
|   |- "display_id"
|   |- "icon"
|   |- "id"
|   |- "image"
|   |- "image_author"
|   |- "image_link"
|   |- "name"
|   |- "palette"
|
|- [Country]
|   |- "borders_land"
|   |- "borders_maritime"
|   |- "color"
|   |- "comtrade_name"
|   |- "display_id"
|   |- "icon"
|   |- "id"
|   |- "id_2char"
|   |- "id_name"
|   |- "image"
|   |- "image_author"
|   |- "image_link"
|   |- "name"
|   |- "palette"
|   |- "weight"
|
...
```

#### Sample

```
{
  "data": [
    {
      "color": "#ffc41c", 
      "display_id": null, 
      "icon": "/static/img/icons/country/country_af.png", 
      "id": "af", 
      "image": "/static/img/headers/country/af.jpg", 
      "image_author": "16:9clue", 
      "image_link": "https://flic.kr/p/957RCF", 
      "name": "Africa", 
      "palette": "[\"#b2532d\"]"
    }, 
    {
      "borders_land": "['afcod', 'afcog', 'afnam', 'afzmb']", 
      "color": "#ffc41c", 
      "comtrade_name": "Angola", 
      "display_id": "ago", 
      "icon": "/static/img/icons/country/country_afago.png", 
      "id": "afago", 
      "id_2char": "ao", 
      "id_num": "24", 
      "image": "/static/img/headers/country/afago.jpg", 
      "image_author": "kaysha", 
      "image_link": "https://flic.kr/p/kPLXP", 
      "name": "Angola", 
      "palette": "[\"#833510\",\"#fef8da\",\"#e3b782\"]", 
      "weight": 34156227207.20
    },
    ...
    {
      "color": "#C7C7C7", 
      "comtrade_name": "Special Categories", 
      "display_id": null, 
      "icon": "/static/img/icons/country/country_xxxxi.png", 
      "id": "xxxxi", 
      "id_num": "839", 
      "image": "/static/img/headers/country/xx.jpg", 
      "name": "Special Categories"
    }
  ]
}
```

#### Remarks

[Sample country icon](https://atlas.media.mit.edu/static/img/icons/country/country_asphl.png)

### `https://atlas.media.mit.edu/attr/sitc/`

#### Schema

```
data
|- [Product]
|   |- "color"
|   |- "conversion"
|   |- "display_id"
|   |- "icon"
|   |- "id"
|   |- "image"
|   |- "keywords"
|   |- "name"
|   |- "pini
|   |- "pini_class"
|   |- "weight"
|
...
```

#### Sample

```
{
  "data": [
    {
      "color": "#17BCEF", 
      "display_id": null, 
      "icon": "/static/img/icons/sitc/sitc_10.png", 
      "id": "10", 
      "image": null, 
      "keywords": null, 
      "name": "Machinery"
    }, 
    {
      "color": "#17BCEF", 
      "conversion": "3603", 
      "display_id": "5722", 
      "icon": "/static/img/icons/sitc/sitc_10.png", 
      "id": "105722", 
      "image": null, 
      "keywords": "fuses, caps, igniters, detonators", 
      "name": "Initiating Devices", 
      "pini": 42.1771, 
      "pini_class": 3, 
      "weight": 1427330032.00
    },
    ...
    {
      "color": "#c7c7c7", 
      "display_id": "0110", 
      "icon": "/static/img/icons/sitc/sitc_xx.png", 
      "id": "xx0110", 
      "image": null, 
      "keywords": null, 
      "name": "Meat"
    }
  ]
}
```

#### Remarks

[Sample product icon](https://atlas.media.mit.edu/static/img/icons/sitc/sitc_71.png)

## Sanity Checks

- [ ] using `export` gives the same data as `import`