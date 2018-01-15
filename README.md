# DataLake
DataSeer's data lake for datasets used in content development.

For details on how the DataLake is used, please refer to the [wiki](https://github.com/dataseer-carl/data-lake/wiki).

Note that the documentation in the markdown files in each data source pertains only to the data source or data files per se.

## Directory structure

```
root/
|- Datasets/
|	|- description.md
|	|- Raw/
|	|	|- ...
|	|- Data/
|	|	|- ...
|	|- Docs/
|	|	|- ...
|	|- Scripts/
|	|	|- ...
|	|- ...
|- ...
```	
### Items

* *description.md*<br/>
	Documentation pertaining to data source and data files per se.
* **Raw/**<br/>
	Contains the raw files from which the data are read from.
* **Scripts/**<br/>
	Scripts used to parse the raw files.
* **Data/**<br/>
	Processed datasets produced by the scripts.
* **Docs/**<br/>
	Other files from the same source pertinent to the data (e.g. data dictionary).