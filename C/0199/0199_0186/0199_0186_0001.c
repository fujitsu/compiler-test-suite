#include <stdlib.h>
extern signed int v3 (unsigned int, unsigned int, signed int);
extern signed int (*v4) (unsigned int, unsigned int, signed int);
unsigned int v5 (unsigned int);
unsigned int (*v6) (unsigned int) = v5;
signed char v7 (signed char, unsigned short);
signed char (*v8) (signed char, unsigned short) = v7;
extern void v9 (signed short);
extern void (*v10) (signed short);
extern unsigned char v11 (signed int, unsigned int);
extern unsigned char (*v12) (signed int, unsigned int);
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern void v15 (unsigned short, signed short, signed int);
extern void (*v16) (unsigned short, signed short, signed int);
extern unsigned int v17 (signed char);
extern unsigned int (*v18) (signed char);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
unsigned int v21 (signed short, signed char, signed char);
unsigned int (*v22) (signed short, signed char, signed char) = v21;
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern signed short v25 (unsigned short, unsigned char, signed int, signed int);
extern signed short (*v26) (unsigned short, unsigned char, signed int, signed int);
extern unsigned short v29 (unsigned char, signed short, signed int, signed short);
extern unsigned short (*v30) (unsigned char, signed short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v79 = 2U;
unsigned char v78 = 1;
signed short v77 = 0;

unsigned int v21 (signed short v80, signed char v81, signed char v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 5U;
unsigned short v84 = 3;
unsigned short v83 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
signed short v88 = 2;
unsigned int v87 = 4U;
signed char v86 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed char v89, unsigned short v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = 0;
unsigned char v92 = 7;
signed char v91 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = -3;
unsigned short v96 = 3;
unsigned short v95 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v98;
signed short v99;
signed int v100;
v98 = v96 - 5;
v99 = -1 - 2;
v100 = 1 - 0;
v15 (v98, v99, v100);
}
break;
case 13: 
return 4U;
default: abort ();
}
}
}
}
