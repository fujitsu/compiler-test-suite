#include <stdlib.h>
extern void v1 (unsigned char, signed short, unsigned char);
extern void (*v2) (unsigned char, signed short, unsigned char);
extern signed char v3 (signed int);
extern signed char (*v4) (signed int);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed int v7 (signed int, signed int);
extern signed int (*v8) (signed int, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
signed short v11 (signed char, unsigned int);
signed short (*v12) (signed char, unsigned int) = v11;
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
extern void v17 (signed int);
extern void (*v18) (signed int);
extern unsigned short v21 (unsigned char, signed short);
extern unsigned short (*v22) (unsigned char, signed short);
extern signed int v23 (unsigned char);
extern signed int (*v24) (unsigned char);
extern void v27 (unsigned char, signed char);
extern void (*v28) (unsigned char, signed char);
extern void v29 (unsigned short, signed int);
extern void (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v85 = 1;
signed char v84 = 1;
unsigned short v83 = 4;

signed short v11 (signed char v86, unsigned int v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = 1;
signed int v89 = -3;
unsigned int v88 = 2U;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v91;
signed short v92;
unsigned short v93;
v91 = 5 - 5;
v92 = -2 - -1;
v93 = v21 (v91, v92);
history[history_index++] = (int)v93;
}
break;
case 9: 
{
unsigned int v94;
signed int v95;
v94 = 1U - v87;
v95 = v15 (v94);
history[history_index++] = (int)v95;
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}
