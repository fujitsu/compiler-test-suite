#include <stdlib.h>
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned short v5 (unsigned char, unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned char, unsigned int, unsigned short);
unsigned char v7 (signed char, unsigned int);
unsigned char (*v8) (signed char, unsigned int) = v7;
extern unsigned int v9 (signed char);
extern unsigned int (*v10) (signed char);
extern unsigned int v11 (unsigned int, signed short, signed int, unsigned short);
extern unsigned int (*v12) (unsigned int, signed short, signed int, unsigned short);
extern signed char v13 (unsigned char, unsigned char);
extern signed char (*v14) (unsigned char, unsigned char);
extern signed int v15 (unsigned short, signed short, unsigned int, unsigned short);
extern signed int (*v16) (unsigned short, signed short, unsigned int, unsigned short);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern unsigned int v19 (unsigned int);
extern unsigned int (*v20) (unsigned int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned int v25 (signed short, signed int, unsigned char, signed int);
extern unsigned int (*v26) (signed short, signed int, unsigned char, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern void v29 (signed short, unsigned int, unsigned short);
extern void (*v30) (signed short, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v82 = 6;
unsigned short v81 = 5;
unsigned char v80 = 7;

unsigned char v7 (signed char v83, unsigned int v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 1U;
unsigned char v86 = 1;
signed short v85 = 3;
trace++;
switch (trace)
{
case 8: 
{
signed short v88;
unsigned int v89;
unsigned short v90;
v88 = 2 - -3;
v89 = v84 - v87;
v90 = 4 - 0;
v29 (v88, v89, v90);
}
break;
case 10: 
{
signed char v91;
unsigned short v92;
v91 = -3 + -1;
v92 = v17 (v91);
history[history_index++] = (int)v92;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}
