#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern unsigned short v5 (unsigned short, signed char, signed char);
extern unsigned short (*v6) (unsigned short, signed char, signed char);
extern signed char v7 (unsigned char, signed int, unsigned char);
extern signed char (*v8) (unsigned char, signed int, unsigned char);
void v9 (unsigned int, signed int, signed char, signed short);
void (*v10) (unsigned int, signed int, signed char, signed short) = v9;
extern unsigned char v11 (signed char, unsigned int, signed char, unsigned char);
extern unsigned char (*v12) (signed char, unsigned int, signed char, unsigned char);
extern signed short v13 (signed int);
extern signed short (*v14) (signed int);
extern signed char v15 (unsigned int, unsigned short, signed int, signed int);
extern signed char (*v16) (unsigned int, unsigned short, signed int, signed int);
extern signed short v17 (signed short, signed int, signed char);
extern signed short (*v18) (signed short, signed int, signed char);
unsigned int v19 (signed char, unsigned short, unsigned int, signed short);
unsigned int (*v20) (signed char, unsigned short, unsigned int, signed short) = v19;
extern unsigned int v21 (signed short, signed char, unsigned int, signed char);
extern unsigned int (*v22) (signed short, signed char, unsigned int, signed char);
extern signed short v23 (unsigned short, signed char, unsigned short);
extern signed short (*v24) (unsigned short, signed char, unsigned short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern void v29 (unsigned short, signed char);
extern void (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v124 = 6;
signed char v123 = 1;
signed char v122 = 0;

unsigned int v19 (signed char v125, unsigned short v126, unsigned int v127, signed short v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 2U;
unsigned char v130 = 7;
signed int v129 = -3;
trace++;
switch (trace)
{
case 2: 
return v127;
case 4: 
return 5U;
case 6: 
return v131;
default: abort ();
}
}
}
}

void v9 (unsigned int v132, signed int v133, signed char v134, signed short v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 6;
signed short v137 = -3;
unsigned short v136 = 3;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v139;
unsigned short v140;
signed int v141;
signed int v142;
signed char v143;
v139 = 4U - v132;
v140 = v138 + v138;
v141 = v133 + 1;
v142 = v133 - v133;
v143 = v15 (v139, v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 11: 
return;
case 13: 
return;
default: abort ();
}
}
}
}
