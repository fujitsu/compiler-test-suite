#include <stdlib.h>
extern signed int v3 (signed char, signed short);
extern signed int (*v4) (signed char, signed short);
extern void v5 (void);
extern void (*v6) (void);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
signed char v11 (void);
signed char (*v12) (void) = v11;
void v13 (void);
void (*v14) (void) = v13;
extern signed int v15 (signed char, signed int, signed short, unsigned int);
extern signed int (*v16) (signed char, signed int, signed short, unsigned int);
extern signed int v17 (signed char, unsigned char, signed int, unsigned int);
extern signed int (*v18) (signed char, unsigned char, signed int, unsigned int);
extern unsigned int v21 (unsigned short, unsigned short);
extern unsigned int (*v22) (unsigned short, unsigned short);
extern signed int v23 (signed char, unsigned char, signed char);
extern signed int (*v24) (signed char, unsigned char, signed char);
extern unsigned char v25 (signed short, signed int, unsigned char, signed int);
extern unsigned char (*v26) (signed short, signed int, unsigned char, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v80 = 3;
unsigned char v79 = 2;
unsigned char v78 = 6;

void v13 (void)
{
{
for (;;) {
unsigned char v83 = 2;
signed short v82 = -4;
unsigned short v81 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
unsigned char v86 = 6;
unsigned char v85 = 2;
signed int v84 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed char v87;
unsigned char v88;
signed int v89;
unsigned int v90;
signed int v91;
v87 = 1 + -4;
v88 = 7 - v86;
v89 = v84 + v84;
v90 = 6U - 7U;
v91 = v17 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}
