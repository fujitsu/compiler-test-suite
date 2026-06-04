#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed int, unsigned char);
extern unsigned int (*v2) (unsigned short, signed int, unsigned char);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
signed char v5 (unsigned int, signed short);
signed char (*v6) (unsigned int, signed short) = v5;
unsigned short v7 (signed short, signed int);
unsigned short (*v8) (signed short, signed int) = v7;
extern signed char v9 (unsigned int, signed char, signed short, unsigned int);
extern signed char (*v10) (unsigned int, signed char, signed short, unsigned int);
extern signed int v11 (unsigned char, signed int, unsigned short, signed char);
extern signed int (*v12) (unsigned char, signed int, unsigned short, signed char);
extern signed int v13 (unsigned int, unsigned short, unsigned int);
extern signed int (*v14) (unsigned int, unsigned short, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern signed char v17 (unsigned char, signed char);
extern signed char (*v18) (unsigned char, signed char);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern signed int v21 (signed short, unsigned char);
extern signed int (*v22) (signed short, unsigned char);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed short v25 (signed short, unsigned int, unsigned char, unsigned char);
extern signed short (*v26) (signed short, unsigned int, unsigned char, unsigned char);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed int v29 (unsigned short, signed short, signed short, unsigned char);
extern signed int (*v30) (unsigned short, signed short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v123 = 0;
signed int v122 = 0;
unsigned char v121 = 7;

signed int v19 (void)
{
{
for (;;) {
signed int v126 = -4;
unsigned short v125 = 1;
unsigned int v124 = 7U;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v127;
v127 = 0 - 6;
v3 (v127);
}
break;
case 10: 
return -3;
case 12: 
return v126;
default: abort ();
}
}
}
}

unsigned short v7 (signed short v128, signed int v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 6;
signed int v131 = -3;
unsigned char v130 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned int v133, signed short v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed int v137 = 0;
unsigned int v136 = 6U;
unsigned char v135 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
