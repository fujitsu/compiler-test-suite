#include <stdlib.h>
signed int v1 (unsigned char, unsigned int, unsigned char);
signed int (*v2) (unsigned char, unsigned int, unsigned char) = v1;
extern unsigned int v3 (unsigned char, signed int, unsigned int);
extern unsigned int (*v4) (unsigned char, signed int, unsigned int);
extern unsigned short v5 (unsigned char, unsigned char);
extern unsigned short (*v6) (unsigned char, unsigned char);
extern signed int v7 (signed int);
extern signed int (*v8) (signed int);
extern unsigned char v9 (unsigned char);
extern unsigned char (*v10) (unsigned char);
extern signed int v11 (signed char, signed char, signed int);
extern signed int (*v12) (signed char, signed char, signed int);
extern void v13 (signed char, unsigned short, signed char);
extern void (*v14) (signed char, unsigned short, signed char);
extern signed char v15 (unsigned short, signed char);
extern signed char (*v16) (unsigned short, signed char);
extern void v17 (unsigned int, signed short, signed int);
extern void (*v18) (unsigned int, signed short, signed int);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern void v21 (signed short, signed char, unsigned int, signed short);
extern void (*v22) (signed short, signed char, unsigned int, signed short);
extern signed int v23 (signed short, signed char, unsigned char);
extern signed int (*v24) (signed short, signed char, unsigned char);
extern signed short v27 (unsigned int, unsigned char);
extern signed short (*v28) (unsigned int, unsigned char);
extern signed int v29 (unsigned short, unsigned int);
extern signed int (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v122 = -2;
signed char v121 = 1;
unsigned short v120 = 0;

unsigned short v19 (void)
{
{
for (;;) {
signed int v125 = 2;
signed char v124 = -1;
signed int v123 = -4;
trace++;
switch (trace)
{
case 4: 
return 7;
case 6: 
return 1;
default: abort ();
}
}
}
}

signed int v1 (unsigned char v126, unsigned int v127, unsigned char v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = 2;
unsigned short v130 = 5;
unsigned short v129 = 4;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v132;
unsigned int v133;
unsigned char v134;
signed int v135;
v132 = v126 + 7;
v133 = v127 + 6U;
v134 = 1 + v126;
v135 = v1 (v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 1: 
return 2;
case 2: 
{
unsigned char v136;
unsigned char v137;
v136 = v126 + 1;
v137 = v9 (v136);
history[history_index++] = (int)v137;
}
break;
case 8: 
{
signed int v138;
signed int v139;
v138 = 1 - -4;
v139 = v7 (v138);
history[history_index++] = (int)v139;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
