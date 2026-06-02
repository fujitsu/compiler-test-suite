#include <stdlib.h>
unsigned char v1 (unsigned short, signed char);
unsigned char (*v2) (unsigned short, signed char) = v1;
extern unsigned int v3 (signed short, signed int);
extern unsigned int (*v4) (signed short, signed int);
extern unsigned short v5 (unsigned short, signed char, signed short);
extern unsigned short (*v6) (unsigned short, signed char, signed short);
extern signed short v7 (signed int, unsigned short, unsigned short);
extern signed short (*v8) (signed int, unsigned short, unsigned short);
extern unsigned char v9 (unsigned int, signed char, signed char, signed short);
extern unsigned char (*v10) (unsigned int, signed char, signed char, signed short);
extern void v11 (void);
extern void (*v12) (void);
signed short v13 (unsigned short, unsigned short);
signed short (*v14) (unsigned short, unsigned short) = v13;
extern signed char v15 (unsigned int, signed char, signed char, signed short);
extern signed char (*v16) (unsigned int, signed char, signed char, signed short);
extern signed int v17 (unsigned char, signed short);
extern signed int (*v18) (unsigned char, signed short);
extern signed short v19 (unsigned int, signed char, signed short);
extern signed short (*v20) (unsigned int, signed char, signed short);
extern void v21 (signed short, signed char, signed short);
extern void (*v22) (signed short, signed char, signed short);
extern void v23 (unsigned short, unsigned int, unsigned short);
extern void (*v24) (unsigned short, unsigned int, unsigned short);
extern void v25 (signed short, signed short);
extern void (*v26) (signed short, signed short);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v132 = 7;
unsigned short v131 = 1;
unsigned short v130 = 6;

signed short v13 (unsigned short v133, unsigned short v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned char v137 = 1;
signed int v136 = -1;
unsigned int v135 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v138, signed char v139)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed char v142 = 1;
unsigned short v141 = 0;
signed short v140 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed short v143;
signed int v144;
unsigned int v145;
v143 = -4 - v140;
v144 = 2 + -1;
v145 = v3 (v143, v144);
history[history_index++] = (int)v145;
}
break;
case 11: 
return 6;
case 14: 
return 5;
default: abort ();
}
}
}
}
