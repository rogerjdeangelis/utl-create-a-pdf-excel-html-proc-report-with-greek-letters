%let pgm=utl-create-a-pdf-excel-html-proc-report-with-greek-letters;

Create a pdf excel html proc report with greek letters

github
http://tinyurl.com/mr2e7wxn
https://github.com/rogerjdeangelis/utl-create-a-pdf-excel-html-proc-report-with-greek-letters
/*           _               _
  ___  _   _| |_ _ __  _   _| |_ ___
 / _ \| | | | __| `_ \| | | | __/ __|
| (_) | |_| | |_| |_) | |_| | |_\__ \
 \___/ \__,_|\__| .__/ \__,_|\__|___/
                |_|
*/

PDF REPORT WITH GREEK LETTERS
http://tinyurl.com/aap6snew
https://github.com/rogerjdeangelis/utl-create-a-pdf-excel-html-proc-report-with-greek-letters/blob/main/greek.pdf

HTML REPORT
http://tinyurl.com/85ekcya6
https://github.com/rogerjdeangelis/utl-create-a-pdf-excel-html-proc-report-with-greek-letters/blob/main/greek.htm

EXCEL REPORT
http://tinyurl.com/3s4db72m
https://github.com/rogerjdeangelis/utl-create-a-pdf-excel-html-proc-report-with-greek-letters/blob/main/greek.xlsx

/*               _     _
 _ __  _ __ ___ | |__ | | ___ _ __ ___
| `_ \| `__/ _ \| `_ \| |/ _ \ `_ ` _ \
| |_) | | | (_) | |_) | |  __/ | | | | |
| .__/|_|  \___/|_.__/|_|\___|_| |_| |_|
|_|
*/

/**************************************************************************************************************************/
/*                                              |                                     |                                   */
/*                                              |                                     |                                   */
/*                 INPUT                        |          PROCESS                    |              OUTPUT               */
/* data have;                                   |                                     |                                   */
/* input unicde $15. @18 description $28.;      |  ods escapechar='^';                |  d:/xls/greek.xlsx sheet [UNICDE] */
/* cards4;                                      |  ods excel file="d:/xls/greek.xlsx";| [UNICODE]                         */
/* ^{unicode 0391}  GREEK CAPITAL LETTER ALPHA  |  proc report data=have;             | -----------------------------     */
/* ^{unicode 0392}  GREEK CAPITAL LETTER BETA   |  title 'Example of ^{unicode ####}  | | A   |          B          |     */
/* ^{unicode 0393}  GREEK CAPITAL LETTER GAMMA  |  run;quit;                          | |---------------------------+     */
/* ^{unicode 0394}  GREEK CAPITAL LETTER DELTA  |  ods excel close;                   | |CODED|DESCRIPTION          |     */
/* ^{unicode 0395}  GREEK CAPITAL LETTER EPSILON|                                     | |-----+---------------------|     */
/* ^{unicode 0396}  GREEK CAPITAL LETTER ZETA   |  ods pdf file="d:/pdf/greek.pdf";   | |?    |GREEK CAPITAL ALPHA  |     */
/* ^{unicode 0397}  GREEK CAPITAL LETTER ETA    |  proc report data=have;             | |     |---------------------+     */
/* ^{unicode 0398}  GREEK CAPITAL LETTER THETA  |  title 'Example of ^{unicode ####}  | |     |GREEK CAPITAL BETA   |     */
/* ^{unicode 0399}  GREEK CAPITAL LETTER IOTA   |  run;quit;                          | |     |---------------------+     */
/* ^{unicode 039A}  GREEK CAPITAL LETTER KAPPA  |  ods pdf close;                     | |     |GREEK CAPITAL CHI    |     */
/* ^{unicode 039B}  GREEK CAPITAL LETTER LAMDA  |                                     | |     |---------------------+     */
/* ^{unicode 039C}  GREEK CAPITAL LETTER MU     |                                     | |     |GREEK CAPITAL DELTA  |     */
/* ^{unicode 039D}  GREEK CAPITAL LETTER NU     |  ods html body="greek.htm"          | |-------------------==------+     */
/* ^{unicode 039C}  GREEK CAPITAL LETTER MU     |    path="d:\htm" STYLE=minimal ;    | |     |GREEK CAPITAL        |     */
/* ^{unicode 039E}  GREEK CAPITAL LETTER XI     |  proc report data=have;             | ...                               */
/* ^{unicode 039F}  GREEK CAPITAL LETTER OMICRON|  title 'Example of ^{unicode ####}  | |     |---------------------+     */
/* ^{unicode 03A0}  GREEK CAPITAL LETTER PI     |  run;quit;                          | |?    |GREEK CAPITAL UPSILON|     */
/* ^{unicode 03A1}  GREEK CAPITAL LETTER RHO    |  ods html close;                    | |     |---------------------+     */
/* ^{unicode 03A3}  GREEK CAPITAL LETTER SIGMA  |                                     | |?    |GREEK CAPITAL XI     |     */
/* ^{unicode 03A4}  GREEK CAPITAL LETTER TAU    |                                     | |     |---------------------+     */
/* ^{unicode 03A5}  GREEK CAPITAL LETTER UPSILON|                                     | |?    |GREEK CAPITAL ZETA   |     */
/* ^{unicode 03A6}  GREEK CAPITAL LETTER PHI    |                                     | -----------------------------     */
/* ^{unicode 03A7}  GREEK CAPITAL LETTER CHI    |                                     | [UNICDE]                          */
/* ^{unicode 03A8}  GREEK CAPITAL LETTER PSI    |                                     |                                   */
/* ^{unicode 03A9}  GREEK CAPITAL LETTER OMEGA  |                                     |                                   */
/* ;;;;                                         |                                     |                                   */
/* run;quit;                                    |                                     |                                   */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

data have;
input unicde $15. @18 description $28.;
cards4;
^{unicode 0391}  GREEK CAPITAL LETTER ALPHA
^{unicode 0392}  GREEK CAPITAL LETTER BETA
^{unicode 0393}  GREEK CAPITAL LETTER GAMMA
^{unicode 0394}  GREEK CAPITAL LETTER DELTA
^{unicode 0395}  GREEK CAPITAL LETTER EPSILON
^{unicode 0396}  GREEK CAPITAL LETTER ZETA
^{unicode 0397}  GREEK CAPITAL LETTER ETA
^{unicode 0398}  GREEK CAPITAL LETTER THETA
^{unicode 0399}  GREEK CAPITAL LETTER IOTA
^{unicode 039A}  GREEK CAPITAL LETTER KAPPA
^{unicode 039B}  GREEK CAPITAL LETTER LAMDA
^{unicode 039C}  GREEK CAPITAL LETTER MU
^{unicode 039D}  GREEK CAPITAL LETTER NU
^{unicode 039E}  GREEK CAPITAL LETTER XI
^{unicode 039F}  GREEK CAPITAL LETTER OMICRON
^{unicode 03A0}  GREEK CAPITAL LETTER PI
^{unicode 03A1}  GREEK CAPITAL LETTER RHO
^{unicode 03A3}  GREEK CAPITAL LETTER SIGMA
^{unicode 03A4}  GREEK CAPITAL LETTER TAU
^{unicode 03A5}  GREEK CAPITAL LETTER UPSILON
^{unicode 03A6}  GREEK CAPITAL LETTER PHI
^{unicode 03A7}  GREEK CAPITAL LETTER CHI
^{unicode 03A8}  GREEK CAPITAL LETTER PSI
^{unicode 03A9}  GREEK CAPITAL LETTER OMEGA
;;;;
run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*  HAVE total obs=24                                                                                                     */
/*                                                                                                                        */
/*  OBS        UNICDE                 DESCRIPTION                                                                         */
/*                                                                                                                        */
/*    1    ^{unicode 0391}    GREEK CAPITAL LETTER ALPHA                                                                  */
/*    2    ^{unicode 0392}    GREEK CAPITAL LETTER BETA                                                                   */
/*    3    ^{unicode 0393}    GREEK CAPITAL LETTER GAMMA                                                                  */
/*    4    ^{unicode 0394}    GREEK CAPITAL LETTER DELTA                                                                  */
/*    5    ^{unicode 0395}    GREEK CAPITAL LETTER EPSILON                                                                */
/*    6    ^{unicode 0396}    GREEK CAPITAL LETTER ZETA                                                                   */
/*    7    ^{unicode 0397}    GREEK CAPITAL LETTER ETA                                                                    */
/*    8    ^{unicode 0398}    GREEK CAPITAL LETTER THETA                                                                  */
/*    9    ^{unicode 0399}    GREEK CAPITAL LETTER IOTA                                                                   */
/*   10    ^{unicode 039A}    GREEK CAPITAL LETTER KAPPA                                                                  */
/*   11    ^{unicode 039B}    GREEK CAPITAL LETTER LAMDA                                                                  */
/*   12    ^{unicode 039C}    GREEK CAPITAL LETTER MU                                                                     */
/*   13    ^{unicode 039D}    GREEK CAPITAL LETTER NU                                                                     */
/*   14    ^{unicode 039E}    GREEK CAPITAL LETTER XI                                                                     */
/*   15    ^{unicode 039F}    GREEK CAPITAL LETTER OMICRON                                                                */
/*   16    ^{unicode 03A0}    GREEK CAPITAL LETTER PI                                                                     */
/*   17    ^{unicode 03A1}    GREEK CAPITAL LETTER RHO                                                                    */
/*   18    ^{unicode 03A3}    GREEK CAPITAL LETTER SIGMA                                                                  */
/*   19    ^{unicode 03A4}    GREEK CAPITAL LETTER TAU                                                                    */
/*   20    ^{unicode 03A5}    GREEK CAPITAL LETTER UPSILON                                                                */
/*   21    ^{unicode 03A6}    GREEK CAPITAL LETTER PHI                                                                    */
/*   22    ^{unicode 03A7}    GREEK CAPITAL LETTER CHI                                                                    */
/*   23    ^{unicode 03A8}    GREEK CAPITAL LETTER PSI                                                                    */
/*   24    ^{unicode 03A9}    GREEK CAPITAL LETTER OMEGA                                                                  */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/

ods escapechar='^';
ods excel file="d:/xls/greek.xlsx";
proc report data=have;
title 'Example of ^{unicode 03B1} UNICODE function';
run;quit;
ods excel close;

ods pdf file="d:/pdf/greek.pdf";
proc report data=have;
title 'Example of ^{unicode 03B1} UNICODE function';
run;quit;
ods pdf close;


ods html body="greek.ht m" path="d:\htm" STYLE=minimal ;
proc report data=have;
title 'Example of ^{unicode 03B1} UNICODE function';
run;quit;
ods html close;

/*           _               _
  ___  _   _| |_ _ __  _   _| |_ ___
 / _ \| | | | __| `_ \| | | | __/ __|
| (_) | |_| | |_| |_) | |_| | |_\__ \
 \___/ \__,_|\__| .__/ \__,_|\__|___/
                |_|
*/

PDF REPORT WITH GREEK LETTERS
http://tinyurl.com/aap6snew
https://github.com/rogerjdeangelis/utl-create-a-pdf-excel-html-proc-report-with-greek-letters/blob/main/greek.pdf

HTML REPORT
http://tinyurl.com/85ekcya6
https://github.com/rogerjdeangelis/utl-create-a-pdf-excel-html-proc-report-with-greek-letters/blob/main/greek.htm

EXCEL REPORT
http://tinyurl.com/3s4db72m
https://github.com/rogerjdeangelis/utl-create-a-pdf-excel-html-proc-report-with-greek-letters/blob/main/greek.xlsx

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
