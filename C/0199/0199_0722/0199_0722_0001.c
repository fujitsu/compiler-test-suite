#include <stdlib.h>
signed char v1 (unsigned int, signed short);
signed char (*v2) (unsigned int, signed short) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (signed int, unsigned char);
extern unsigned int (*v6) (signed int, unsigned char);
extern signed char v7 (signed int, unsigned short, unsigned int, unsigned int);
extern signed char (*v8) (signed int, unsigned short, unsigned int, unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed int v11 (void);
extern signed int (*v12) (void);
signed char v13 (void);
signed char (*v14) (void) = v13;
extern unsigned short v15 (signed char, unsigned char, unsigned char, signed char);
extern unsigned short (*v16) (signed char, unsigned char, unsigned char, signed char);
extern void v17 (void);
extern void (*v18) (void);
extern signed char v19 (unsigned char, signed int, signed int);
extern signed char (*v20) (unsigned char, signed int, signed int);
extern unsigned char v21 (signed char, signed char);
extern unsigned char (*v22) (signed char, signed char);
extern void v23 (unsigned short, signed int, signed int);
extern void (*v24) (unsigned short, signed int, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern signed int v29 (signed int, signed int);
extern signed int (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v80 = 1;
unsigned char v79 = 6;
unsigned int v78 = 5U;

signed char v13 (void)
{
{
for (;;) {
unsigned char v83 = 2;
unsigned short v82 = 0;
signed char v81 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned int v84, signed short v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -1;
signed short v87 = 2;
unsigned char v86 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed int v89;
unsigned short v90;
unsigned int v91;
unsigned int v92;
signed char v93;
v89 = -2 + -4;
v90 = 2 + 6;
v91 = v84 + 6U;
v92 = v84 - v84;
v93 = v7 (v89, v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}
