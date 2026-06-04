#include <stdlib.h>
extern signed short v1 (signed short, unsigned int, signed int);
extern signed short (*v2) (signed short, unsigned int, signed int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern signed char v5 (void);
extern signed char (*v6) (void);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern signed short v9 (unsigned short, unsigned char, signed int);
extern signed short (*v10) (unsigned short, unsigned char, signed int);
extern signed int v11 (unsigned short, signed short, signed char);
extern signed int (*v12) (unsigned short, signed short, signed char);
extern signed char v13 (signed char, signed char, signed short, unsigned char);
extern signed char (*v14) (signed char, signed char, signed short, unsigned char);
extern unsigned int v15 (unsigned short, signed int, unsigned char);
extern unsigned int (*v16) (unsigned short, signed int, unsigned char);
extern unsigned int v17 (unsigned short, signed char, unsigned short);
extern unsigned int (*v18) (unsigned short, signed char, unsigned short);
unsigned int v19 (signed short, unsigned short);
unsigned int (*v20) (signed short, unsigned short) = v19;
extern unsigned int v23 (signed int, unsigned int, unsigned int, signed short);
extern unsigned int (*v24) (signed int, unsigned int, unsigned int, signed short);
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v75 = 4U;
signed char v74 = -4;
unsigned char v73 = 6;

unsigned int v19 (signed short v76, unsigned short v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 2;
signed int v79 = -4;
unsigned char v78 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
unsigned int v83 = 3U;
signed char v82 = -2;
unsigned char v81 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed char v84;
signed char v85;
signed short v86;
unsigned char v87;
signed char v88;
v84 = v82 + v82;
v85 = v82 - v82;
v86 = -2 - -2;
v87 = 6 + v81;
v88 = v13 (v84, v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 15: 
return -4;
default: abort ();
}
}
}
}
