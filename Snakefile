
configfile: "config.yaml"

rule all:
    input: 
        expand("{param}.png",param=config["plotName"])

rule bam_correlation:
    input:
        expand("data/{sample}.bam",sample=config["samples"])
    output:
        o1 = "results.npz",
    log:
        bam_corr = "bam_corr.log"
    shell:
        "multiBamSummary bins {config[summary_params]} --bamfiles {input} -out {output.o1} 2> {log.bam_corr}"



#Deeptols correlation plots

rule plot:
    input:
        "results.npz"
    output:
        o1 = expand("{param}.png",param=config["plotName"]),
        o2 = expand("{param}.tab",param=config["correlationMatrix"])
    shell:
	    "plotCorrelation -in {input} --corMethod {config[correlationMethod]} --skipZeros --plotTitle {config[plotTitle]} --whatToPlot {config[plotType]} -o {output.o1} {config[plot_params]} --outFileCorMatrix {output.o2}"

