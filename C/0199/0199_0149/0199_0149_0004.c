#include <stdlib.h>
signed int v1 (signed char, signed short, signed short);
signed int (*v2) (signed char, signed short, signed short) = v1;
signed int v3 (signed int, signed int);
signed int (*v4) (signed int, signed int) = v3;
extern void v5 (signed short, unsigned char);
extern void (*v6) (signed short, unsigned char);
extern unsigned short v7 (unsigned short, signed int, signed int);
extern unsigned short (*v8) (unsigned short, signed int, signed int);
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern unsigned int v17 (unsigned char, unsigned char, unsigned char);
extern unsigned int (*v18) (unsigned char, unsigned char, unsigned char);
unsigned short v19 (unsigned char, unsigned int);
unsigned short (*v20) (unsigned char, unsigned int) = v19;
extern signed short v21 (unsigned short, unsigned char, signed int);
extern signed short (*v22) (unsigned short, unsigned char, signed int);
extern void v23 (unsigned short, unsigned short, unsigned char);
extern void (*v24) (unsigned short, unsigned short, unsigned char);
extern signed int v25 (signed short, signed char, signed short);
extern signed int (*v26) (signed short, signed char, signed short);
extern signed int v27 (unsigned int, signed int, signed int);
extern signed int (*v28) (unsigned int, signed int, signed int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v127 = -3;
unsigned short v126 = 2;
signed char v125 = -1;

unsigned short v19 (unsigned char v128, unsigned int v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 5;
signed short v131 = 3;
signed short v130 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v133, signed int v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed char v137 = 3;
unsigned int v136 = 2U;
signed int v135 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed char v138, signed short v139, signed short v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed short v143 = 3;
signed short v142 = -2;
unsigned short v141 = 7;
trace++;
switch (trace)
{
case 0: 
{
v13 ();
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
