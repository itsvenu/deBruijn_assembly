### deBruijn_assembly

deBruijn graph based assembly is the most easy way to assemble an NGS library. In this, the sequence can be 
represted in terms of its k-mer components. Users are reuested to check http://www.homolog.us/Tutorials/index.php?p=2.1&s=1
for a basic idea of how k-mer based assembly is done.

This script is helpful in assembling the sequence based on its k-mers. 
######NOTE 
As of now the script only handles the k-mers with no repetition. 

Example of k-mer file:
```ATGGAAG
TGGAAGT
GGAAGTC
GAAGTCG
AAGTCGC
AGTCGCG
GTCGCGG
TCGCGGA
CGCGGAA
GCGGAAT
CGGAATC

USAGE: perl debruijn.pl kmer_file.txt
       
       Assembled sequence: 
       ATGGAAGTCGCGGAATC
```
As a default, overlaps were checked with 6 residues of each k-mer(7-mer). Users can modify the script according 
to their needs by changing the length in ```substr function``` (line 20 in the script).
