#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
signed int v3 (signed short, signed int, signed short, unsigned short);
signed int (*v4) (signed short, signed int, signed short, unsigned short) = v3;
extern signed int v5 (signed int, signed short, signed short);
extern signed int (*v6) (signed int, signed short, signed short);
unsigned char v7 (signed int, signed char, signed short, unsigned char);
unsigned char (*v8) (signed int, signed char, signed short, unsigned char) = v7;
unsigned int v9 (signed short, signed int, unsigned int);
unsigned int (*v10) (signed short, signed int, unsigned int) = v9;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned short v13 (signed short, unsigned int, unsigned int, signed short);
extern unsigned short (*v14) (signed short, unsigned int, unsigned int, signed short);
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
signed int v17 (signed short, unsigned short, unsigned int, unsigned short);
signed int (*v18) (signed short, unsigned short, unsigned int, unsigned short) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned char v23 (unsigned int, signed int, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned int, signed int, unsigned char, unsigned char);
extern unsigned short v25 (unsigned short, unsigned char);
extern unsigned short (*v26) (unsigned short, unsigned char);
extern unsigned char v27 (unsigned int, signed int);
extern unsigned char (*v28) (unsigned int, signed int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v54 = 7U;
signed char v53 = 0;
unsigned short v52 = 3;

signed int v17 (signed short v55, unsigned short v56, unsigned int v57, unsigned short v58)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned char v61 = 5;
signed int v60 = 3;
signed char v59 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed short v62, signed int v63, unsigned int v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = 2;
unsigned int v66 = 5U;
signed short v65 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v68, signed char v69, signed short v70, unsigned char v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 1;
signed int v73 = -2;
signed int v72 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed short v75, signed int v76, signed short v77, unsigned short v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned char v81 = 1;
unsigned int v80 = 5U;
signed short v79 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
signed short v84 = 0;
unsigned char v83 = 2;
signed char v82 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v85;
v85 = v19 ();
history[history_index++] = (int)v85;
}
break;
case 8: 
{
unsigned char v86;
unsigned char v87;
v86 = 1 + 5;
v87 = v15 (v86);
history[history_index++] = (int)v87;
}
break;
case 10: 
{
unsigned int v88;
signed int v89;
unsigned char v90;
unsigned char v91;
unsigned char v92;
v88 = 4U + 7U;
v89 = -4 + -3;
v90 = 7 + v83;
v91 = v83 - v83;
v92 = v23 (v88, v89, v90, v91);
history[history_index++] = (int)v92;
}
break;
case 12: 
return v83;
default: abort ();
}
}
}
}
