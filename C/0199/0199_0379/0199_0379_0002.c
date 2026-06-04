#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed int, signed short, unsigned char);
extern unsigned char (*v2) (unsigned short, signed int, signed short, unsigned char);
extern unsigned char v3 (signed int, unsigned short);
extern unsigned char (*v4) (signed int, unsigned short);
extern unsigned int v5 (unsigned int, signed int);
extern unsigned int (*v6) (unsigned int, signed int);
extern signed char v7 (unsigned short, signed char, unsigned char, unsigned int);
extern signed char (*v8) (unsigned short, signed char, unsigned char, unsigned int);
extern signed int v9 (unsigned char, signed short);
extern signed int (*v10) (unsigned char, signed short);
void v11 (signed int, unsigned char, signed int);
void (*v12) (signed int, unsigned char, signed int) = v11;
extern signed int v13 (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed int (*v14) (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed char v15 (signed char, signed char, signed char);
extern signed char (*v16) (signed char, signed char, signed char);
extern signed char v19 (signed int, signed short, unsigned char, unsigned short);
extern signed char (*v20) (signed int, signed short, unsigned char, unsigned short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
signed int v25 (signed int, signed char, unsigned short, unsigned short);
signed int (*v26) (signed int, signed char, unsigned short, unsigned short) = v25;
extern unsigned char v27 (unsigned short, unsigned char);
extern unsigned char (*v28) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v76 = 4;
unsigned short v75 = 5;
unsigned short v74 = 3;

signed int v25 (signed int v77, signed char v78, unsigned short v79, unsigned short v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 3;
signed int v82 = -3;
unsigned short v81 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed int v84, unsigned char v85, signed int v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = 2;
unsigned int v88 = 7U;
unsigned int v87 = 6U;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v90;
unsigned char v91;
unsigned char v92;
v90 = 2 + 6;
v91 = 7 + 1;
v92 = v27 (v90, v91);
history[history_index++] = (int)v92;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
