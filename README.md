# data-lake
DataSeer's data lake for datasets used in the data courses.

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
	Description file of data.
* **Raw/**<br/>
	Contains the raw files from which the data are read from.
* **Scripts/**<br/>
	Scripts used to parse the raw files.
* **Data/**<br/>
	Processed datasets produced by the scripts.
* **Docs/**<br/>
	Other files from the same source pertinent to the data (e.g. data dictionary).

## Data

[Sales Win Loss](IBM%20Watson_Sales%20Win%20Loss/description.md)

[Banking Loss Events](IBM%20Watson_Banking%20Loss%20Events/description.md)

[IT Help Desk](IBM%20Watson_IT%20Help%20Desk/description.md)

[HR Employee Attrition](IBM%20Watson_HR%20Employee%20Attrition/description.md)

[The Complete Journey](dunnhumby_The-Complete-Journey/description.md)