# DataLake
DataSeer's data lake houses datasets and use case project files used in content development.

For details on how the DataLake is used, please refer to the [wiki](https://github.com/dataseer-carl/data-lake/wiki).

Note that the documentation in the markdown files in each data source pertains only to the data source or data files per se.

## Directory structure

```
root/
|- Datasets/
|	|- readme.md
|	|- Raw/
|	|	|- ...
|	|- Data/
|	|	|- ...
|	|- Docs/
|	|	|- ...
|	|- Scripts/
|	|	|- ...
|	|- UseCases/
|		|- [Use Case Title]/
|			|- ...
|- ...
```	
### Items

* *readme.md*:Documentation pertaining to data source and data files per se.
* **Raw/**:Contains the raw files from which the data are read from.
* **Scripts/**:Scripts used to parse the raw files into core datasets.
* **Data/**:Core datasets produced by the scripts in <pre>Scripts/</pre>.  Core datasets are used across various use cases (e.g. datasets that would serve as root datasets for different use cases, reference tables, the entire raw datasets pivoted, or simply raw dataset with preserved schema but persistent metadata).
* **Docs/**:Other files from the same source pertinent to the data (e.g. data dictionary).
* **UseCases/**:Houses all use cases derived from the data source.  Each use case is in a separate folder.
* **[Use Case Title]/**: Contains all files used in describing and solving a use case.  These should, at least, include:
   + interim datasets processed from the core datasets;
   + scripts used to produce the interim datasets; and
   + graphics and reports generated using the interim datasets.

The directory structure of each use case can be designed at the discretion of the team or member working on it.
