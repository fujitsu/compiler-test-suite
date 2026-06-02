#include <stdlib.h>
signed short v1 (unsigned short, unsigned short);
signed short (*v2) (unsigned short, unsigned short) = v1;
extern unsigned short v3 (signed int, unsigned short, signed short, unsigned short);
extern unsigned short (*v4) (signed int, unsigned short, signed short, unsigned short);
extern void v5 (void);
extern void (*v6) (void);
extern signed int v7 (unsigned short);
extern signed int (*v8) (unsigned short);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern unsigned short v11 (unsigned short, signed char, unsigned short, signed char);
extern unsigned short (*v12) (unsigned short, signed char, unsigned short, signed char);
extern signed char v13 (signed char, unsigned short, unsigned char, signed char);
extern signed char (*v14) (signed char, unsigned short, unsigned char, signed char);
unsigned char v15 (signed char, unsigned short);
unsigned char (*v16) (signed char, unsigned short) = v15;
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
static void v21 (void);
static void (*v22) (void) = v21;
extern signed char v23 (signed short, unsigned short, signed char);
extern signed char (*v24) (signed short, unsigned short, signed char);
extern unsigned char v25 (unsigned char, signed char, unsigned char, unsigned short);
extern unsigned char (*v26) (unsigned char, signed char, unsigned char, unsigned short);
extern unsigned int v27 (unsigned short, unsigned short, unsigned short);
extern unsigned int (*v28) (unsigned short, unsigned short, unsigned short);
extern unsigned int v29 (signed char, unsigned char, signed char);
extern unsigned int (*v30) (signed char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v74 = -3;
unsigned short v73 = 3;
signed int v72 = 2;

static void v21 (void)
{
{
for (;;) {
signed char v77 = -2;
signed char v76 = -3;
signed int v75 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v78;
signed int v79;
v78 = 3 + 5;
v79 = v7 (v78);
history[history_index++] = (int)v79;
}
break;
case 7: 
{
unsigned short v80;
signed int v81;
v80 = 3 - 6;
v81 = v7 (v80);
history[history_index++] = (int)v81;
}
break;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned char v15 (signed char v82, unsigned short v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 5U;
signed int v85 = -2;
signed short v84 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned short v87, unsigned short v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = 3;
unsigned int v90 = 6U;
unsigned int v89 = 4U;
trace++;
switch (trace)
{
case 0: 
{
v21 ();
}
break;
case 10: 
{
v21 ();
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}
