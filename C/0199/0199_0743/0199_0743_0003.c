#include <stdlib.h>
extern unsigned short v1 (signed int, signed char);
extern unsigned short (*v2) (signed int, signed char);
void v3 (void);
void (*v4) (void) = v3;
extern signed int v5 (unsigned char, unsigned int, unsigned char);
extern signed int (*v6) (unsigned char, unsigned int, unsigned char);
extern void v7 (unsigned short, signed char, signed int);
extern void (*v8) (unsigned short, signed char, signed int);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern signed char v11 (signed short, unsigned char, unsigned short);
extern signed char (*v12) (signed short, unsigned char, unsigned short);
extern signed char v13 (signed char, unsigned short);
extern signed char (*v14) (signed char, unsigned short);
unsigned char v15 (signed short, signed int, signed int);
unsigned char (*v16) (signed short, signed int, signed int) = v15;
extern unsigned short v19 (signed int, signed short, unsigned char, signed int);
extern unsigned short (*v20) (signed int, signed short, unsigned char, signed int);
extern signed short v21 (signed short, signed char, signed short);
extern signed short (*v22) (signed short, signed char, signed short);
extern signed int v23 (signed short, unsigned short, signed char);
extern signed int (*v24) (signed short, unsigned short, signed char);
extern signed char v25 (signed char, signed short, signed int, signed int);
extern signed char (*v26) (signed char, signed short, signed int, signed int);
extern unsigned short v27 (unsigned char, unsigned short, signed int, unsigned char);
extern unsigned short (*v28) (unsigned char, unsigned short, signed int, unsigned char);
extern void v29 (signed short, unsigned short, unsigned char, unsigned int);
extern void (*v30) (signed short, unsigned short, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v115 = 6;
unsigned char v114 = 3;
signed short v113 = 0;

unsigned char v15 (signed short v116, signed int v117, signed int v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = -2;
signed int v120 = -4;
signed char v119 = -1;
trace++;
switch (trace)
{
case 9: 
return 2;
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
unsigned short v124 = 2;
unsigned short v123 = 2;
unsigned char v122 = 2;
trace++;
switch (trace)
{
case 5: 
{
signed char v125;
unsigned char v126;
v125 = 3 - 3;
v126 = v9 (v125);
history[history_index++] = (int)v126;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}
