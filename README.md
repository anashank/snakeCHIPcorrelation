# snakeCHIPcorrelation
Snakemake pipeline that creates correlation plots(like heatmaps,scatterplots) using deeptools. `multiBamSummary` to calculate required pairwise correlations. Refer the following link for more deatils (https://deeptools.readthedocs.io/en/develop/content/example_usage.html)

# Before running
In the `config.yaml` file you should include details of samples to be analyzed and neccessary parameters for obtaining the required plots using deeptools. Refer deeptools documentation on how this has to be done for your specific requirements.


### Dependiencies
* [snakemake](https://snakemake.readthedocs.io/en/stable/)
* [deeptools](https://deeptools.readthedocs.io/en/develop/index.html)

# How to run?
```bash
Dry run: snakemake -n
Actual run: snakemake --cores [number of cores]

Run snakemake --unlock if directory is locked
```
```
