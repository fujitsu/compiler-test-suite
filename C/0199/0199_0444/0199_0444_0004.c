#include <stdlib.h>
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed short v5 (signed char, unsigned char, unsigned short, signed short);
extern signed short (*v6) (signed char, unsigned char, unsigned short, signed short);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned int, unsigned short, signed char);
extern unsigned int (*v10) (unsigned short, unsigned int, unsigned short, signed char);
extern unsigned short v11 (unsigned char, signed char);
extern unsigned short (*v12) (unsigned char, signed char);
extern signed char v13 (unsigned short, signed char, unsigned short, signed char);
extern signed char (*v14) (unsigned short, signed char, unsigned short, signed char);
void v15 (unsigned char);
void (*v16) (unsigned char) = v15;
signed char v17 (void);
signed char (*v18) (void) = v17;
unsigned short v19 (unsigned char);
unsigned short (*v20) (unsigned char) = v19;
extern unsigned char v21 (signed short, signed short);
extern unsigned char (*v22) (signed short, signed short);
extern signed int v23 (unsigned short, unsigned short);
extern signed int (*v24) (unsigned short, unsigned short);
extern void v25 (signed char, unsigned char, unsigned int);
extern void (*v26) (signed char, unsigned char, unsigned int);
extern unsigned char v27 (signed short, unsigned short);
extern unsigned char (*v28) (signed short, unsigned short);
extern signed short v29 (signed int, unsigned int);
extern signed short (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v122 = 1;
signed int v121 = 1;
unsigned int v120 = 4U;

unsigned short v19 (unsigned char v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
signed int v126 = 3;
signed int v125 = -2;
unsigned int v124 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
signed short v129 = 0;
unsigned char v128 = 3;
signed char v127 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned char v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
signed char v133 = 2;
signed int v132 = -3;
signed char v131 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed short v134;
unsigned short v135;
unsigned char v136;
v134 = 1 + -3;
v135 = 5 - 4;
v136 = v27 (v134, v135);
history[history_index++] = (int)v136;
}
break;
case 5: 
{
signed short v137;
unsigned short v138;
unsigned char v139;
v137 = -4 - 0;
v138 = 2 + 3;
v139 = v27 (v137, v138);
history[history_index++] = (int)v139;
}
break;
case 7: 
{
signed short v140;
unsigned short v141;
unsigned char v142;
v140 = 1 - -2;
v141 = 3 - 6;
v142 = v27 (v140, v141);
history[history_index++] = (int)v142;
}
break;
case 9: 
{
signed short v143;
unsigned short v144;
unsigned char v145;
v143 = 2 - -1;
v144 = 3 + 0;
v145 = v27 (v143, v144);
history[history_index++] = (int)v145;
}
break;
case 11: 
return;
case 13: 
return;
case 15: 
return;
default: abort ();
}
}
}
}
