#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned short v5 (signed char);
extern unsigned short (*v6) (signed char);
unsigned short v7 (signed short, unsigned short, unsigned int);
unsigned short (*v8) (signed short, unsigned short, unsigned int) = v7;
extern signed char v9 (unsigned short, signed char);
extern signed char (*v10) (unsigned short, signed char);
extern signed int v11 (signed char, unsigned char);
extern signed int (*v12) (signed char, unsigned char);
unsigned char v13 (signed int, signed int, unsigned short, signed short);
unsigned char (*v14) (signed int, signed int, unsigned short, signed short) = v13;
signed char v15 (unsigned int, signed int, unsigned short);
signed char (*v16) (unsigned int, signed int, unsigned short) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (signed int, unsigned int, signed int);
extern void (*v24) (signed int, unsigned int, signed int);
extern signed char v25 (signed int, signed int, unsigned int, unsigned short);
extern signed char (*v26) (signed int, signed int, unsigned int, unsigned short);
extern unsigned char v27 (signed int, signed short, unsigned char, signed int);
extern unsigned char (*v28) (signed int, signed short, unsigned char, signed int);
extern unsigned char v29 (unsigned short, unsigned short, signed short, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v79 = 7;
signed short v78 = -4;
signed char v77 = 3;

signed char v15 (unsigned int v80, signed int v81, unsigned short v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 0;
unsigned short v84 = 3;
signed int v83 = -2;
trace++;
switch (trace)
{
case 1: 
return 0;
case 3: 
{
signed char v86;
v86 = v21 ();
history[history_index++] = (int)v86;
}
break;
case 9: 
return 2;
default: abort ();
}
}
}
}

unsigned char v13 (signed int v87, signed int v88, unsigned short v89, signed short v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 5;
signed int v92 = 0;
unsigned int v91 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v94, unsigned short v95, unsigned int v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = 0;
unsigned int v98 = 5U;
signed int v97 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
