#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
extern unsigned int v5 (signed int);
extern unsigned int (*v6) (signed int);
extern unsigned char v7 (signed short, signed short);
extern unsigned char (*v8) (signed short, signed short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed int v11 (signed int, signed short, unsigned char);
extern signed int (*v12) (signed int, signed short, unsigned char);
extern signed char v13 (signed char, signed char, signed short, signed char);
extern signed char (*v14) (signed char, signed char, signed short, signed char);
signed char v15 (signed int, unsigned char, signed char, signed short);
signed char (*v16) (signed int, unsigned char, signed char, signed short) = v15;
extern void v17 (unsigned short, unsigned short, unsigned char);
extern void (*v18) (unsigned short, unsigned short, unsigned char);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
extern signed char v21 (signed char, signed int);
extern signed char (*v22) (signed char, signed int);
extern unsigned int v23 (unsigned int, unsigned short, signed short);
extern unsigned int (*v24) (unsigned int, unsigned short, signed short);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern void v27 (unsigned short, signed char, unsigned char);
extern void (*v28) (unsigned short, signed char, unsigned char);
extern signed int v29 (unsigned char, unsigned char, signed char, unsigned short);
extern signed int (*v30) (unsigned char, unsigned char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v129 = 0;
unsigned short v128 = 4;
unsigned short v127 = 4;

signed char v25 (void)
{
{
for (;;) {
unsigned short v132 = 5;
unsigned char v131 = 0;
signed char v130 = 2;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v133;
unsigned char v134;
signed char v135;
unsigned short v136;
signed int v137;
v133 = v131 + v131;
v134 = v131 + v131;
v135 = v130 + -3;
v136 = v132 - v132;
v137 = v29 (v133, v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 5: 
return -1;
default: abort ();
}
}
}
}

signed char v15 (signed int v138, unsigned char v139, signed char v140, signed short v141)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned int v144 = 1U;
unsigned short v143 = 4;
unsigned short v142 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
