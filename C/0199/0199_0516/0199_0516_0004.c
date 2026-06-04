#include <stdlib.h>
extern signed short v1 (signed int, signed int);
extern signed short (*v2) (signed int, signed int);
void v3 (void);
void (*v4) (void) = v3;
void v5 (signed short, signed char, signed char, signed char);
void (*v6) (signed short, signed char, signed char, signed char) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern signed char v11 (signed char, unsigned char);
extern signed char (*v12) (signed char, unsigned char);
extern unsigned int v13 (unsigned char);
extern unsigned int (*v14) (unsigned char);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern unsigned int v17 (unsigned char, signed char);
extern unsigned int (*v18) (unsigned char, signed char);
extern signed short v19 (signed short, signed char, unsigned short);
extern signed short (*v20) (signed short, signed char, unsigned short);
extern unsigned int v21 (signed char, signed short);
extern unsigned int (*v22) (signed char, signed short);
extern unsigned int v23 (unsigned char, unsigned int, signed char, unsigned short);
extern unsigned int (*v24) (unsigned char, unsigned int, signed char, unsigned short);
extern signed short v25 (signed int, unsigned int);
extern signed short (*v26) (signed int, unsigned int);
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
extern unsigned char v29 (unsigned char, unsigned char, signed short);
extern unsigned char (*v30) (unsigned char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v124 = -2;
signed int v123 = 3;
unsigned int v122 = 2U;

void v5 (signed short v125, signed char v126, signed char v127, signed char v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = -2;
unsigned char v130 = 1;
signed char v129 = -3;
trace++;
switch (trace)
{
case 6: 
{
signed char v132;
unsigned char v133;
signed char v134;
v132 = v128 - v126;
v133 = v130 + v130;
v134 = v11 (v132, v133);
history[history_index++] = (int)v134;
}
break;
case 8: 
{
unsigned char v135;
unsigned char v136;
signed short v137;
unsigned char v138;
v135 = v130 + 0;
v136 = 3 + 6;
v137 = 3 + -4;
v138 = v29 (v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 10: 
{
signed char v139;
unsigned char v140;
signed char v141;
v139 = v129 + -2;
v140 = v130 - v130;
v141 = v11 (v139, v140);
history[history_index++] = (int)v141;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
unsigned char v144 = 0;
signed short v143 = -4;
unsigned char v142 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
