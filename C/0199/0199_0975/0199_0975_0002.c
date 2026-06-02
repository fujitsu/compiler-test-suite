#include <stdlib.h>
signed int v1 (signed short);
signed int (*v2) (signed short) = v1;
extern void v3 (signed short, signed char, signed short, signed int);
extern void (*v4) (signed short, signed char, signed short, signed int);
extern unsigned char v5 (unsigned char, signed short);
extern unsigned char (*v6) (unsigned char, signed short);
extern signed char v7 (signed short, signed short);
extern signed char (*v8) (signed short, signed short);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern signed int v11 (signed short, signed short);
extern signed int (*v12) (signed short, signed short);
void v13 (unsigned int, signed int);
void (*v14) (unsigned int, signed int) = v13;
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (signed int, unsigned int, unsigned int, signed int);
extern unsigned char (*v20) (signed int, unsigned int, unsigned int, signed int);
extern unsigned short v21 (unsigned short, signed int);
extern unsigned short (*v22) (unsigned short, signed int);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern signed int v27 (unsigned char, unsigned char);
extern signed int (*v28) (unsigned char, unsigned char);
extern void v29 (unsigned char, unsigned short);
extern void (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v80 = 6;
unsigned char v79 = 2;
signed int v78 = 2;

void v13 (unsigned int v81, signed int v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 6U;
unsigned short v84 = 5;
unsigned int v83 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed short v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 1;
unsigned char v88 = 7;
signed char v87 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed short v90;
signed short v91;
signed char v92;
v90 = 0 - v86;
v91 = 0 - 0;
v92 = v7 (v90, v91);
history[history_index++] = (int)v92;
}
break;
case 18: 
return -1;
default: abort ();
}
}
}
}
