#include <stdlib.h>
unsigned int v1 (signed char, signed int, signed short, signed char);
unsigned int (*v2) (signed char, signed int, signed short, signed char) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v5 (signed char, signed short);
extern signed char (*v6) (signed char, signed short);
unsigned short v7 (signed int, signed int, signed char, unsigned short);
unsigned short (*v8) (signed int, signed int, signed char, unsigned short) = v7;
extern signed int v9 (unsigned int, unsigned char, unsigned char);
extern signed int (*v10) (unsigned int, unsigned char, unsigned char);
extern signed int v11 (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed int (*v12) (unsigned int, unsigned char, unsigned short, unsigned int);
unsigned int v13 (signed char, unsigned int, unsigned int);
unsigned int (*v14) (signed char, unsigned int, unsigned int) = v13;
extern signed char v15 (signed int, unsigned char, signed char);
extern signed char (*v16) (signed int, unsigned char, signed char);
unsigned int v17 (signed int, unsigned char);
unsigned int (*v18) (signed int, unsigned char) = v17;
extern unsigned short v19 (signed char, unsigned char);
extern unsigned short (*v20) (signed char, unsigned char);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
signed short v23 (signed char, unsigned char, signed char);
signed short (*v24) (signed char, unsigned char, signed char) = v23;
extern unsigned int v25 (unsigned char, unsigned int, unsigned short);
extern unsigned int (*v26) (unsigned char, unsigned int, unsigned short);
unsigned short v27 (signed short, unsigned short, signed char, unsigned short);
unsigned short (*v28) (signed short, unsigned short, signed char, unsigned short) = v27;
extern signed char v29 (unsigned int, signed char, unsigned short, signed int);
extern signed char (*v30) (unsigned int, signed char, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v85 = 1;
signed char v84 = 2;
signed char v83 = 0;

unsigned short v27 (signed short v86, unsigned short v87, signed char v88, unsigned short v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 6;
signed char v91 = -3;
signed short v90 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed char v93, unsigned char v94, signed char v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed short v98 = -4;
signed int v97 = 2;
signed char v96 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed int v99, unsigned char v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 5;
unsigned short v102 = 3;
unsigned char v101 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed char v104, unsigned int v105, unsigned int v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 1U;
unsigned short v108 = 0;
unsigned char v107 = 0;
trace++;
switch (trace)
{
case 3: 
return v109;
case 5: 
return v106;
case 7: 
return 7U;
case 9: 
return v106;
case 11: 
return v105;
default: abort ();
}
}
}
}

unsigned short v7 (signed int v110, signed int v111, signed char v112, unsigned short v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = 0;
unsigned short v115 = 6;
unsigned char v114 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed char v117, signed int v118, signed short v119, signed char v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = 2;
signed int v122 = -2;
unsigned char v121 = 5;
trace++;
switch (trace)
{
case 0: 
{
signed int v124;
v124 = v3 ();
history[history_index++] = (int)v124;
}
break;
case 14: 
return 3U;
default: abort ();
}
}
}
}
