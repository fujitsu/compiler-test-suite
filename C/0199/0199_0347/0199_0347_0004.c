#include <stdlib.h>
void v1 (signed short, signed short);
void (*v2) (signed short, signed short) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern signed short v5 (unsigned int, unsigned char);
extern signed short (*v6) (unsigned int, unsigned char);
signed int v7 (void);
signed int (*v8) (void) = v7;
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern unsigned int v11 (signed short, signed int);
extern unsigned int (*v12) (signed short, signed int);
extern void v13 (signed char, unsigned short);
extern void (*v14) (signed char, unsigned short);
extern signed char v15 (signed short, signed int, signed char, signed char);
extern signed char (*v16) (signed short, signed int, signed char, signed char);
extern signed short v17 (signed int, unsigned int, unsigned char);
extern signed short (*v18) (signed int, unsigned int, unsigned char);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed short v21 (signed char, signed short, unsigned char);
extern signed short (*v22) (signed char, signed short, unsigned char);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (signed int, unsigned char, signed char);
extern unsigned short (*v26) (signed int, unsigned char, signed char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v124 = 1U;
signed char v123 = 3;
unsigned char v122 = 2;

signed int v7 (void)
{
{
for (;;) {
unsigned int v127 = 2U;
signed char v126 = -1;
unsigned char v125 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed short v128, signed short v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 2;
signed char v131 = -2;
signed short v130 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v133;
v133 = v27 ();
history[history_index++] = (int)v133;
}
break;
case 2: 
{
signed short v134;
signed int v135;
unsigned int v136;
v134 = v129 + v130;
v135 = -3 - 2;
v136 = v11 (v134, v135);
history[history_index++] = (int)v136;
}
break;
case 18: 
return;
default: abort ();
}
}
}
}
