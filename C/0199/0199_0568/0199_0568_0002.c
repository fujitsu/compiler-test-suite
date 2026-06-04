#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
signed short v3 (unsigned short, unsigned short, signed short);
signed short (*v4) (unsigned short, unsigned short, signed short) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed int v9 (unsigned char, unsigned short);
extern signed int (*v10) (unsigned char, unsigned short);
extern unsigned short v11 (signed char, signed char, signed char, signed int);
extern unsigned short (*v12) (signed char, signed char, signed char, signed int);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern signed int v15 (unsigned short, unsigned int, unsigned char, signed short);
extern signed int (*v16) (unsigned short, unsigned int, unsigned char, signed short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (unsigned int, signed int, unsigned short);
extern signed char (*v20) (unsigned int, signed int, unsigned short);
extern unsigned int v21 (signed char);
extern unsigned int (*v22) (signed char);
extern void v23 (signed short, signed char);
extern void (*v24) (signed short, signed char);
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
extern void v29 (unsigned int, unsigned short, signed char, unsigned short);
extern void (*v30) (unsigned int, unsigned short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v85 = -1;
unsigned int v84 = 3U;
signed int v83 = -2;

unsigned int v13 (void)
{
{
for (;;) {
signed int v88 = 3;
signed int v87 = 1;
unsigned short v86 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v89, unsigned short v90, signed short v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 5;
unsigned int v93 = 0U;
unsigned short v92 = 4;
trace++;
switch (trace)
{
case 1: 
{
signed short v95;
signed char v96;
v95 = -2 + v91;
v96 = -4 - -4;
v23 (v95, v96);
}
break;
case 13: 
return v91;
default: abort ();
}
}
}
}
