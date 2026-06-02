#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
unsigned short v3 (unsigned int, unsigned int, signed short, signed int);
unsigned short (*v4) (unsigned int, unsigned int, signed short, signed int) = v3;
extern signed int v7 (signed short, signed short);
extern signed int (*v8) (signed short, signed short);
extern void v9 (unsigned char, unsigned short);
extern void (*v10) (unsigned char, unsigned short);
extern unsigned char v11 (signed int, unsigned char, signed short, unsigned char);
extern unsigned char (*v12) (signed int, unsigned char, signed short, unsigned char);
unsigned char v13 (unsigned char);
unsigned char (*v14) (unsigned char) = v13;
extern unsigned short v15 (signed short, signed int);
extern unsigned short (*v16) (signed short, signed int);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern unsigned char v23 (unsigned short, unsigned int, unsigned char, signed short);
extern unsigned char (*v24) (unsigned short, unsigned int, unsigned char, signed short);
unsigned int v25 (unsigned short);
unsigned int (*v26) (unsigned short) = v25;
extern void v27 (unsigned char, signed char, unsigned int, signed int);
extern void (*v28) (unsigned char, signed char, unsigned int, signed int);
extern unsigned short v29 (signed int, unsigned int, signed short);
extern unsigned short (*v30) (signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v133 = 6;
unsigned char v132 = 2;
unsigned short v131 = 2;

unsigned int v25 (unsigned short v134)
{
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = 0;
signed int v136 = -1;
signed char v135 = 0;
trace++;
switch (trace)
{
case 1: 
return 5U;
default: abort ();
}
}
}
}

unsigned char v13 (unsigned char v138)
{
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = -4;
signed short v140 = -3;
unsigned short v139 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v142, unsigned int v143, signed short v144, signed int v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned short v148 = 2;
signed short v147 = -1;
unsigned short v146 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
