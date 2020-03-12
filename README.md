# snakeCHIPcorrelation
Snakemake pipeline for obtaining correlation plots from CHIPseq BAM files.
Refer to deeptools docs for more details (https://deeptools.readthedocs.io/en/develop/content/example_usage.html)

# Before running
In the `config.yaml` file you should include details of samples to be analyzed parameters for obtaining the required plots using deeptools. Refer deeptools documentation for further details.


### Dependiencies
* [snakemake](https://snakemake.readthedocs.io/en/stable/)
* [deeptools](https://deeptools.readthedocs.io/en/develop/index.html)

# How to run?
```bash
Dry run: snakemake -n
Actual run: snakemake --cores [number of cores]

Run snakemake --unlock if directory is locked
```
