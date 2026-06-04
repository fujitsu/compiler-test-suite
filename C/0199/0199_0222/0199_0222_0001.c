#include <stdlib.h>
unsigned char v1 (signed int, unsigned char);
unsigned char (*v2) (signed int, unsigned char) = v1;
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern unsigned int v5 (unsigned char, unsigned short);
extern unsigned int (*v6) (unsigned char, unsigned short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed int v11 (unsigned int, signed short, unsigned char, unsigned int);
extern signed int (*v12) (unsigned int, signed short, unsigned char, unsigned int);
extern signed int v13 (void);
extern signed int (*v14) (void);
unsigned char v15 (signed int, unsigned char, unsigned int);
unsigned char (*v16) (signed int, unsigned char, unsigned int) = v15;
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (void);
extern void (*v20) (void);
extern signed short v21 (signed int, signed char);
extern signed short (*v22) (signed int, signed char);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed short v25 (unsigned char);
extern signed short (*v26) (unsigned char);
extern signed short v27 (signed int, signed short, unsigned int, signed short);
extern signed short (*v28) (signed int, signed short, unsigned int, signed short);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v78 = 2;
signed char v77 = 0;
signed char v76 = -2;

unsigned char v15 (signed int v79, unsigned char v80, unsigned int v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = -1;
unsigned char v83 = 1;
signed char v82 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed int v85, unsigned char v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = 1;
unsigned char v88 = 5;
signed int v87 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v90;
unsigned int v91;
v90 = v87 - v85;
v91 = v3 (v90);
history[history_index++] = (int)v91;
}
break;
case 22: 
return v86;
default: abort ();
}
}
}
}
