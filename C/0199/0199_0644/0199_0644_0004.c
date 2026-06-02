#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned char v7 (signed char);
extern unsigned char (*v8) (signed char);
extern unsigned int v9 (signed short, signed int, signed char);
extern unsigned int (*v10) (signed short, signed int, signed char);
extern void v11 (unsigned char, unsigned short, unsigned char, signed int);
extern void (*v12) (unsigned char, unsigned short, unsigned char, signed int);
extern unsigned int v13 (signed int, signed short, unsigned char);
extern unsigned int (*v14) (signed int, signed short, unsigned char);
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned char v25 (signed char, signed int, signed int, signed int);
extern unsigned char (*v26) (signed char, signed int, signed int, signed int);
extern signed short v27 (unsigned int, signed int, unsigned int);
extern signed short (*v28) (unsigned int, signed int, unsigned int);
extern unsigned short v29 (signed int, signed int);
extern unsigned short (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v129 = -3;
signed int v128 = -2;
unsigned char v127 = 0;

unsigned short v1 (void)
{
{
for (;;) {
signed char v132 = 2;
unsigned short v131 = 1;
signed int v130 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed char v133;
signed int v134;
signed int v135;
signed int v136;
unsigned char v137;
v133 = -3 + v132;
v134 = v130 + v130;
v135 = v130 - 2;
v136 = v130 - -1;
v137 = v25 (v133, v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 2: 
{
unsigned int v138;
signed char v139;
v138 = 3U + 3U;
v139 = v3 (v138);
history[history_index++] = (int)v139;
}
break;
case 12: 
return 5;
default: abort ();
}
}
}
}
