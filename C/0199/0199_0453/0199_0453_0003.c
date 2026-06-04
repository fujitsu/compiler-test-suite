#include <stdlib.h>
unsigned int v3 (signed int, unsigned short, unsigned short, unsigned int);
unsigned int (*v4) (signed int, unsigned short, unsigned short, unsigned int) = v3;
signed short v5 (signed char, signed int);
signed short (*v6) (signed char, signed int) = v5;
extern signed short v7 (signed int, signed int, unsigned int, unsigned int);
extern signed short (*v8) (signed int, signed int, unsigned int, unsigned int);
extern void v9 (signed int, unsigned short, signed int);
extern void (*v10) (signed int, unsigned short, signed int);
extern signed char v11 (signed int, unsigned short, signed short);
extern signed char (*v12) (signed int, unsigned short, signed short);
extern unsigned short v13 (unsigned int, signed short, signed short, unsigned char);
extern unsigned short (*v14) (unsigned int, signed short, signed short, unsigned char);
extern unsigned short v15 (unsigned char, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v16) (unsigned char, unsigned char, unsigned short, unsigned short);
extern signed int v17 (signed char, unsigned char);
extern signed int (*v18) (signed char, unsigned char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (signed int, unsigned int, unsigned char, unsigned int);
extern signed short (*v22) (signed int, unsigned int, unsigned char, unsigned int);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed short v25 (unsigned int, signed short, signed char, unsigned char);
extern signed short (*v26) (unsigned int, signed short, signed char, unsigned char);
extern unsigned char v27 (signed char, signed char);
extern unsigned char (*v28) (signed char, signed char);
extern unsigned short v29 (signed char, signed char, unsigned char);
extern unsigned short (*v30) (signed char, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v121 = 2;
signed short v120 = 3;
unsigned char v119 = 4;

signed short v5 (signed char v122, signed int v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed int v126 = -2;
unsigned int v125 = 4U;
unsigned char v124 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed int v127, unsigned short v128, unsigned short v129, unsigned int v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = 2;
unsigned short v132 = 0;
unsigned int v131 = 7U;
trace++;
switch (trace)
{
case 5: 
{
signed char v134;
signed char v135;
unsigned char v136;
v134 = -3 - -1;
v135 = -4 + 2;
v136 = v27 (v134, v135);
history[history_index++] = (int)v136;
}
break;
case 7: 
{
signed char v137;
signed char v138;
unsigned char v139;
unsigned short v140;
v137 = 1 - -2;
v138 = 3 - 3;
v139 = 2 + 1;
v140 = v29 (v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 9: 
{
signed char v141;
signed char v142;
unsigned char v143;
unsigned short v144;
v141 = 0 + -4;
v142 = 0 + -4;
v143 = 1 + 2;
v144 = v29 (v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 11: 
return v130;
default: abort ();
}
}
}
}
