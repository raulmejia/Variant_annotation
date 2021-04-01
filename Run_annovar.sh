### 
# This script shows you how to install and run annovar
###
# This is the reference
# https://annovar.openbioinformatics.org/en/latest/user-guide/startup/



# Download the databases to the folder humandb
perl annotate_variation.pl -buildver hg19 -downdb -webfrom annovar refGene humandb/
perl annotate_variation.pl -buildver hg19 -downdb cytoBand humandb/
perl annotate_variation.pl -buildver hg19 -downdb -webfrom annovar exac03 humandb/
perl annotate_variation.pl -buildver hg19 -downdb -webfrom annovar avsnp147 humandb/
perl annotate_variation.pl -buildver hg19 -downdb -webfrom annovar dbnsfp30a humandb/

$vcfsource_folder/your.vcf
humandb4annovar=/path/to/humandb/

table_annovar.pl $vcfsource_folder/your.vcf $humandb4annovar -buildver hg19 -out Label4yourresults -remove -protocol refGene,cytoBand,exac03,avsnp147,dbnsfp30a -operation g,r,f,f,f -nastring . -polish --vcfinput

#(use table_annovar.pl if it is still no added to your path)
