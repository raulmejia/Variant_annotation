
# This script shows you how to install and run annovar

 This is the reference  https://annovar.openbioinformatics.org/en/latest/user-guide/startup/


### Download the databases in some place in your computer under the folder humandb

```
perl annotate_variation.pl -buildver hg19 -downdb -webfrom annovar refGene humandb/
perl annotate_variation.pl -buildver hg19 -downdb cytoBand humandb/
perl annotate_variation.pl -buildver hg19 -downdb -webfrom annovar exac03 humandb/
perl annotate_variation.pl -buildver hg19 -downdb -webfrom annovar avsnp147 humandb/
perl annotate_variation.pl -buildver hg19 -downdb -webfrom annovar dbnsfp30a humandb/  
```

If you add to the path annotate_variation.pl you can run it only with "annotate_variation.pl arg1 arg2"  

You can download the following databases  
```annotate_variation.pl -buildver hg19 -downdb -webfrom annovar gnomad_genome humandb/``` gnomad_genome has a more comprehensive AF than exac03, the later is quite sparse   

```annotate_variation.pl -buildver hg19 -downdb -webfrom annovar 1000g2015aug humandb/``` It threw me an error whan I ran it because it could not locate 1000g2015aug.txt   

```annotate_variation.pl -buildver hg19 -downdb -webfrom annovar clinvar_20160302 humandb/``` clinical anotations   


In the user guide (filter, gene or region) you can find the explanation of each anotation https://annovar.openbioinformatics.org/en/latest/user-guide/filter/


$vcfsource_folder/your.vcf
humandb4annovar=/path/to/humandb/

table_annovar.pl $vcfsource_folder/your.vcf $humandb4annovar -buildver hg19 -out Label4yourresults -remove -protocol refGene,cytoBand,exac03,avsnp147,dbnsfp30a -operation g,r,f,f,f -nastring . -polish --vcfinput

#(use table_annovar.pl if it is still no added to your path)
