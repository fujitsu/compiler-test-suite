#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int, signed short, signed short);
extern unsigned char (*v2) (unsigned char, signed int, signed short, signed short);
extern signed int v3 (unsigned short, signed int, unsigned short);
extern signed int (*v4) (unsigned short, signed int, unsigned short);
extern unsigned int v5 (signed short, unsigned char);
extern unsigned int (*v6) (signed short, unsigned char);
extern signed char v7 (unsigned char, signed short, signed int);
extern signed char (*v8) (unsigned char, signed short, signed int);
extern void v9 (signed int);
extern void (*v10) (signed int);
extern void v11 (unsigned short, signed short, unsigned char);
extern void (*v12) (unsigned short, signed short, unsigned char);
extern unsigned short v13 (unsigned int, signed char, signed char, unsigned short);
extern unsigned short (*v14) (unsigned int, signed char, signed char, unsigned short);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern unsigned char v19 (unsigned char, signed int, unsigned short, signed int);
extern unsigned char (*v20) (unsigned char, signed int, unsigned short, signed int);
extern unsigned int v21 (signed int, signed short, unsigned int);
extern unsigned int (*v22) (signed int, signed short, unsigned int);
extern signed char v23 (unsigned char, signed int, signed char);
extern signed char (*v24) (unsigned char, signed int, signed char);
extern unsigned int v25 (unsigned int);
extern unsigned int (*v26) (unsigned int);
signed char v27 (unsigned char);
signed char (*v28) (unsigned char) = v27;
extern unsigned char v29 (unsigned int, signed short, signed int);
extern unsigned char (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v125 = -2;
unsigned int v124 = 4U;
signed int v123 = -3;

signed char v27 (unsigned char v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = -4;
signed short v128 = 0;
signed int v127 = 2;
trace++;
switch (trace)
{
case 3: 
return 0;
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
unsigned int v132 = 6U;
signed short v131 = 0;
signed int v130 = 0;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v133;
signed int v134;
unsigned short v135;
signed int v136;
v133 = 3 - 4;
v134 = -2 - 3;
v135 = 0 + 1;
v136 = v3 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}
