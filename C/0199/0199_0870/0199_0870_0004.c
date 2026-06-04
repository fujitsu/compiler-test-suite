#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned short, unsigned int, unsigned short);
extern unsigned char (*v2) (unsigned short, unsigned short, unsigned int, unsigned short);
extern signed char v3 (unsigned int, signed short, unsigned short, unsigned short);
extern signed char (*v4) (unsigned int, signed short, unsigned short, unsigned short);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern unsigned char v9 (unsigned int, unsigned short, unsigned int, unsigned int);
extern unsigned char (*v10) (unsigned int, unsigned short, unsigned int, unsigned int);
signed int v13 (unsigned short, signed int);
signed int (*v14) (unsigned short, signed int) = v13;
unsigned int v15 (unsigned char);
unsigned int (*v16) (unsigned char) = v15;
extern void v17 (signed short);
extern void (*v18) (signed short);
signed int v19 (signed int, unsigned int);
signed int (*v20) (signed int, unsigned int) = v19;
extern unsigned char v21 (signed char, signed short, signed short);
extern unsigned char (*v22) (signed char, signed short, signed short);
void v23 (unsigned short);
void (*v24) (unsigned short) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v124 = 3;
signed int v123 = 0;
unsigned short v122 = 3;

void v23 (unsigned short v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = -1;
signed short v127 = 0;
signed int v126 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed int v129, unsigned int v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = 1;
unsigned char v132 = 6;
unsigned short v131 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned char v134)
{
history[history_index++] = (int)v134;
{
for (;;) {
unsigned int v137 = 4U;
signed int v136 = -4;
unsigned char v135 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned short v138, signed int v139)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed short v142 = 1;
signed char v141 = -4;
unsigned short v140 = 3;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}
