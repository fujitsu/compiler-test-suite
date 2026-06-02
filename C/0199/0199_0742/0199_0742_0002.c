#include <stdlib.h>
void v1 (unsigned short);
void (*v2) (unsigned short) = v1;
extern void v3 (signed short);
extern void (*v4) (signed short);
extern void v5 (signed char);
extern void (*v6) (signed char);
extern unsigned char v7 (unsigned char, signed char, unsigned short);
extern unsigned char (*v8) (unsigned char, signed char, unsigned short);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern void v11 (unsigned int, signed int, signed int);
extern void (*v12) (unsigned int, signed int, signed int);
extern unsigned char v13 (signed int, signed int, unsigned char);
extern unsigned char (*v14) (signed int, signed int, unsigned char);
extern signed char v15 (unsigned int, unsigned int);
extern signed char (*v16) (unsigned int, unsigned int);
extern unsigned char v17 (signed short, unsigned int, signed char, unsigned char);
extern unsigned char (*v18) (signed short, unsigned int, signed char, unsigned char);
extern signed char v21 (signed int, unsigned short);
extern signed char (*v22) (signed int, unsigned short);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern signed short v27 (unsigned char, signed int);
extern signed short (*v28) (unsigned char, signed int);
extern signed int v29 (signed char, unsigned int, signed int);
extern signed int (*v30) (signed char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v77 = 1;
unsigned short v76 = 7;
signed int v75 = -4;

unsigned int v25 (void)
{
{
for (;;) {
unsigned int v80 = 2U;
signed int v79 = 3;
signed char v78 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned short v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 4;
unsigned char v83 = 6;
unsigned int v82 = 2U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v85;
signed char v86;
unsigned short v87;
unsigned char v88;
v85 = v84 - v84;
v86 = -2 + 0;
v87 = 2 - v81;
v88 = v7 (v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}
