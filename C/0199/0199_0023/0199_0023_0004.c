#include <stdlib.h>
extern signed char v3 (unsigned char, signed short);
extern signed char (*v4) (unsigned char, signed short);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (signed int);
extern void (*v10) (signed int);
extern unsigned char v11 (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned char (*v12) (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned char v13 (signed char, unsigned int, signed int, unsigned short);
extern unsigned char (*v14) (signed char, unsigned int, signed int, unsigned short);
extern unsigned short v15 (signed int, signed short, signed char);
extern unsigned short (*v16) (signed int, signed short, signed char);
extern unsigned char v17 (unsigned char, unsigned short, signed int);
extern unsigned char (*v18) (unsigned char, unsigned short, signed int);
extern unsigned char v19 (signed char);
extern unsigned char (*v20) (signed char);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern unsigned short v23 (signed short, signed short, unsigned char);
extern unsigned short (*v24) (signed short, signed short, unsigned char);
extern void v25 (void);
extern void (*v26) (void);
void v27 (unsigned char, unsigned short, signed short);
void (*v28) (unsigned char, unsigned short, signed short) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v122 = 1U;
unsigned int v121 = 4U;
signed char v120 = -3;

void v27 (unsigned char v123, unsigned short v124, signed short v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned int v128 = 7U;
unsigned short v127 = 1;
signed int v126 = 2;
trace++;
switch (trace)
{
case 7: 
return;
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
signed short v131 = -4;
signed int v130 = -3;
unsigned short v129 = 5;
trace++;
switch (trace)
{
case 2: 
return 0;
case 5: 
return v130;
case 10: 
{
signed short v132;
signed short v133;
unsigned char v134;
unsigned short v135;
v132 = v131 - v131;
v133 = 1 + 3;
v134 = 2 + 6;
v135 = v23 (v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
