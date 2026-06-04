#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern signed char v5 (unsigned short, unsigned short, signed int);
extern signed char (*v6) (unsigned short, unsigned short, signed int);
unsigned short v7 (signed short, signed short, signed char, signed int);
unsigned short (*v8) (signed short, signed short, signed char, signed int) = v7;
extern signed char v9 (unsigned int, signed int);
extern signed char (*v10) (unsigned int, signed int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (unsigned int, signed short, signed short, signed int);
extern void (*v22) (unsigned int, signed short, signed short, signed int);
extern unsigned char v23 (signed short, signed char, signed char);
extern unsigned char (*v24) (signed short, signed char, signed char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (signed int, signed int);
extern void (*v28) (signed int, signed int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v121 = 6;
unsigned short v120 = 3;
unsigned short v119 = 4;

unsigned int v17 (void)
{
{
for (;;) {
unsigned char v124 = 1;
unsigned int v123 = 1U;
unsigned short v122 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v125, signed short v126, signed char v127, signed int v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned short v131 = 5;
unsigned int v130 = 5U;
signed char v129 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
signed char v134 = 0;
unsigned short v133 = 4;
signed int v132 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v135;
signed int v136;
signed char v137;
v135 = 6U + 7U;
v136 = v132 + 0;
v137 = v9 (v135, v136);
history[history_index++] = (int)v137;
}
break;
case 2: 
{
v15 ();
}
break;
case 18: 
return -4;
default: abort ();
}
}
}
}
