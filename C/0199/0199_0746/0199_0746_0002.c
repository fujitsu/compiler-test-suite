#include <stdlib.h>
signed int v1 (signed short, signed short);
signed int (*v2) (signed short, signed short) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v7 (unsigned short, unsigned int, unsigned char, signed int);
extern unsigned short (*v8) (unsigned short, unsigned int, unsigned char, signed int);
extern signed short v9 (signed short);
extern signed short (*v10) (signed short);
extern void v11 (signed int);
extern void (*v12) (signed int);
extern void v13 (unsigned short, signed char, signed int);
extern void (*v14) (unsigned short, signed char, signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed short v17 (unsigned short, signed short, signed int);
extern signed short (*v18) (unsigned short, signed short, signed int);
extern signed char v19 (unsigned int, unsigned int, signed char, unsigned int);
extern signed char (*v20) (unsigned int, unsigned int, signed char, unsigned int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern void v23 (signed char);
extern void (*v24) (signed char);
signed char v25 (unsigned int);
signed char (*v26) (unsigned int) = v25;
extern signed char v27 (signed short, unsigned int, signed int, signed char);
extern signed char (*v28) (signed short, unsigned int, signed int, signed char);
extern signed int v29 (signed short, signed int, signed char);
extern signed int (*v30) (signed short, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v85 = -2;
signed char v84 = -4;
signed int v83 = 0;

signed char v25 (unsigned int v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 0;
signed int v88 = 1;
signed short v87 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed short v90, signed short v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 0;
unsigned int v93 = 0U;
signed int v92 = -2;
trace++;
switch (trace)
{
case 0: 
{
v3 ();
}
break;
case 16: 
return 0;
default: abort ();
}
}
}
}
