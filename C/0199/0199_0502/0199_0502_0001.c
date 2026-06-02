#include <stdlib.h>
unsigned char v1 (signed short);
unsigned char (*v2) (signed short) = v1;
extern unsigned char v3 (signed short, signed char, unsigned char);
extern unsigned char (*v4) (signed short, signed char, unsigned char);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern signed short v7 (signed int, signed int, signed int);
extern signed short (*v8) (signed int, signed int, signed int);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
signed int v11 (signed short, unsigned short, unsigned char);
signed int (*v12) (signed short, unsigned short, unsigned char) = v11;
unsigned int v13 (signed short, signed char, unsigned int);
unsigned int (*v14) (signed short, signed char, unsigned int) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
unsigned short v17 (signed short, unsigned int);
unsigned short (*v18) (signed short, unsigned int) = v17;
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern signed int v21 (unsigned int, signed char, signed short);
extern signed int (*v22) (unsigned int, signed char, signed short);
signed short v25 (signed short, unsigned int, unsigned char, unsigned int);
signed short (*v26) (signed short, unsigned int, unsigned char, unsigned int) = v25;
unsigned short v27 (signed short, unsigned short, unsigned char);
unsigned short (*v28) (signed short, unsigned short, unsigned char) = v27;
extern signed int v29 (signed int, signed int, signed short);
extern signed int (*v30) (signed int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v56 = 6U;
signed short v55 = -3;
unsigned int v54 = 1U;

unsigned short v27 (signed short v57, unsigned short v58, unsigned char v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = 1;
signed int v61 = 1;
signed short v60 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (signed short v63, unsigned int v64, unsigned char v65, unsigned int v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 2;
signed int v68 = -2;
signed char v67 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed short v70, unsigned int v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = 3;
signed char v73 = -3;
signed int v72 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed short v75, signed char v76, unsigned int v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 2;
signed char v79 = 1;
signed int v78 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed short v81, unsigned short v82, unsigned char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 5U;
unsigned char v85 = 3;
unsigned char v84 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed short v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 6;
unsigned int v89 = 1U;
unsigned char v88 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v91;
unsigned int v92;
v91 = 2 - v88;
v92 = v5 (v91);
history[history_index++] = (int)v92;
}
break;
case 14: 
return 5;
default: abort ();
}
}
}
}
