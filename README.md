# The original, original Adventure

There are [many public
repos](https://github.com/search?p=2&q=advent+language%3Afortran&type=Repositories&utf8=%E2%9C%93)
containing various ports and original source files of Crowther and
Woods's original Adventure.

This version is almost the original ADVENTURE source, written by Will
Crowther (the original version, _before_ the additions by Don Woods) and
unearthed by Dennis G. Jerz, as he describes in his [article in the
Digital Humanities
Quarterly](http://www.digitalhumanities.org/dhq/vol/1/2/000009/000009.html)
and on his [blog](https://jerz.setonhill.edu/intfic/colossal-cave-adventure/).

These files have been 
minimally modified to compile 
under GNU `g77`.  The data files have been converted to fixed-field format 
based on a tab width of 7 and one (erroneous?) blank line has been removed
from each. 

Mac users: the binary `advf4-31` is compiled for x86 Mac with OS X 10.3+

*nix users: in the Makefile, fix the path to G77 (GNU Fortran compiler,
or equivalent) and say `make`

Windows users: good luck

# Files

* `advf4-11.f`:  Derived from the 1977-03-11 sources
* `advf4-31.f`  Derived from the 1977-03-31 sources
* `advdat11.dat`:  Data file for the 1977-03-11 version
* `advdat31.dat`:  Data file for the 1977-03-31 version
* `advsup.f`: A few support routines -- RAN, GETLIN, UPCASE -- needed for the code to work under `g77`

To compile

```bash
g77 -o advf4-11 -finit-local-zero advf4-11.f advsup.f
g77 -o advf4-31 -finit-local-zero advf4-31.f advsup.f
```
This version accepts lowercase characters, and does not reproduce a bug in
two-word-command handling in the 1977-03-11 version, but should otherwise
play identical to the original.
