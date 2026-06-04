#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern signed short v3 (unsigned short, unsigned int, signed int);
extern signed short (*v4) (unsigned short, unsigned int, signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern void v7 (void);
extern void (*v8) (void);
extern void v9 (unsigned int, unsigned short, signed short);
extern void (*v10) (unsigned int, unsigned short, signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned char v13 (unsigned int, signed char, signed short);
extern unsigned char (*v14) (unsigned int, signed char, signed short);
extern signed int v15 (unsigned char);
extern signed int (*v16) (unsigned char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern unsigned int v21 (unsigned short, unsigned int, signed short);
extern unsigned int (*v22) (unsigned short, unsigned int, signed short);
extern unsigned int v23 (signed char, unsigned char, signed short, signed int);
extern unsigned int (*v24) (signed char, unsigned char, signed short, signed int);
extern void v27 (void);
extern void (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v131 = 3;
unsigned short v130 = 0;
unsigned int v129 = 4U;

signed char v1 (void)
{
{
for (;;) {
unsigned int v134 = 6U;
signed int v133 = -2;
unsigned short v132 = 6;
trace++;
switch (trace)
{
case 0: 
{
v27 ();
}
break;
case 2: 
{
unsigned short v135;
unsigned int v136;
signed int v137;
signed short v138;
v135 = v132 - 4;
v136 = v134 + v134;
v137 = v133 - v133;
v138 = v3 (v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}
