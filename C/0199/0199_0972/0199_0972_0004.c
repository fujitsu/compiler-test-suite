#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned int);
extern signed int (*v2) (unsigned int, unsigned int);
signed int v3 (signed int);
signed int (*v4) (signed int) = v3;
extern signed int v5 (unsigned int, unsigned short, signed int);
extern signed int (*v6) (unsigned int, unsigned short, signed int);
signed char v7 (unsigned int, unsigned char, signed int, signed short);
signed char (*v8) (unsigned int, unsigned char, signed int, signed short) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
void v13 (unsigned short, unsigned short);
void (*v14) (unsigned short, unsigned short) = v13;
extern signed int v15 (signed short, unsigned short, signed short);
extern signed int (*v16) (signed short, unsigned short, signed short);
extern signed short v19 (signed short, signed char, unsigned int);
extern signed short (*v20) (signed short, signed char, unsigned int);
extern signed int v21 (unsigned char, signed char, unsigned short, unsigned short);
extern signed int (*v22) (unsigned char, signed char, unsigned short, unsigned short);
extern unsigned int v23 (signed short);
extern unsigned int (*v24) (signed short);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern signed char v27 (void);
extern signed char (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v125 = 4;
unsigned char v124 = 6;
unsigned char v123 = 4;

unsigned short v25 (void)
{
{
for (;;) {
unsigned short v128 = 3;
signed short v127 = -2;
unsigned short v126 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned short v129, unsigned short v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned short v133 = 6;
signed short v132 = -3;
signed int v131 = 3;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

signed char v7 (unsigned int v134, unsigned char v135, signed int v136, signed short v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned char v140 = 4;
signed short v139 = 1;
unsigned short v138 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v141)
{
history[history_index++] = (int)v141;
{
for (;;) {
unsigned int v144 = 7U;
unsigned short v143 = 0;
unsigned char v142 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
