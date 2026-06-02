#include <stdlib.h>
signed char v1 (unsigned short, unsigned char, signed int, unsigned short);
signed char (*v2) (unsigned short, unsigned char, signed int, unsigned short) = v1;
extern signed char v3 (signed int);
extern signed char (*v4) (signed int);
extern signed char v5 (signed int, unsigned char);
extern signed char (*v6) (signed int, unsigned char);
signed short v7 (unsigned short, signed char, unsigned short);
signed short (*v8) (unsigned short, signed char, unsigned short) = v7;
unsigned char v9 (unsigned char, signed short, signed int);
unsigned char (*v10) (unsigned char, signed short, signed int) = v9;
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern signed int v13 (unsigned int, signed short, unsigned short, unsigned int);
extern signed int (*v14) (unsigned int, signed short, unsigned short, unsigned int);
extern signed char v15 (unsigned char, unsigned int);
extern signed char (*v16) (unsigned char, unsigned int);
extern unsigned short v17 (unsigned int, unsigned int, unsigned char);
extern unsigned short (*v18) (unsigned int, unsigned int, unsigned char);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
unsigned char v21 (signed int);
unsigned char (*v22) (signed int) = v21;
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned char v25 (signed int, signed int, signed short);
extern unsigned char (*v26) (signed int, signed int, signed short);
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern signed int v29 (signed char, signed int, signed short);
extern signed int (*v30) (signed char, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v61 = 1;
signed short v60 = -4;
signed short v59 = -2;

unsigned char v21 (signed int v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
signed char v65 = 3;
signed int v64 = -4;
signed char v63 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
unsigned char v68 = 2;
signed char v67 = 0;
unsigned int v66 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v69, signed short v70, signed int v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = -4;
signed short v73 = 3;
unsigned char v72 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v75, signed char v76, unsigned short v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned int v80 = 3U;
signed char v79 = 1;
unsigned int v78 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned short v81, unsigned char v82, signed int v83, unsigned short v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = 1;
signed short v86 = 0;
signed int v85 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v88;
unsigned int v89;
signed char v90;
v88 = 0 + 6;
v89 = 6U + 4U;
v90 = v15 (v88, v89);
history[history_index++] = (int)v90;
}
break;
case 2: 
{
unsigned int v91;
unsigned int v92;
unsigned char v93;
unsigned short v94;
v91 = 1U - 6U;
v92 = 6U + 3U;
v93 = v82 + v82;
v94 = v17 (v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 4: 
{
signed int v95;
signed int v96;
signed short v97;
unsigned char v98;
v95 = 2 - v85;
v96 = v83 - v85;
v97 = v86 + v86;
v98 = v25 (v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 12: 
return v87;
default: abort ();
}
}
}
}
