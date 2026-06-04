#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned int);
extern signed int (*v2) (unsigned short, unsigned int);
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern signed char v5 (void);
extern signed char (*v6) (void);
unsigned char v7 (unsigned short, signed int);
unsigned char (*v8) (unsigned short, signed int) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned short v11 (unsigned int, unsigned short, unsigned short, signed int);
extern unsigned short (*v12) (unsigned int, unsigned short, unsigned short, signed int);
extern unsigned char v13 (signed short, unsigned char);
extern unsigned char (*v14) (signed short, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (unsigned short, signed int);
extern unsigned int (*v18) (unsigned short, signed int);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern void v21 (unsigned int, unsigned short, signed short, signed char);
extern void (*v22) (unsigned int, unsigned short, signed short, signed char);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern unsigned int v25 (signed short, unsigned char);
extern unsigned int (*v26) (signed short, unsigned char);
extern signed int v27 (signed int, signed char, signed short);
extern signed int (*v28) (signed int, signed char, signed short);
extern signed char v29 (signed int, unsigned char, unsigned char);
extern signed char (*v30) (signed int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v86 = 7;
signed int v85 = -3;
unsigned int v84 = 5U;

unsigned short v19 (void)
{
{
for (;;) {
signed int v89 = -2;
unsigned int v88 = 4U;
unsigned short v87 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v90, signed int v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = 1;
signed short v93 = -1;
signed short v92 = -3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v95;
unsigned short v96;
signed short v97;
signed char v98;
v95 = 6U - 4U;
v96 = 6 - 2;
v97 = 1 - v92;
v98 = -2 - -3;
v21 (v95, v96, v97, v98);
}
break;
case 13: 
return 6;
default: abort ();
}
}
}
}
