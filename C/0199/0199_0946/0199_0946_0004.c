#include <stdlib.h>
extern unsigned int v3 (unsigned short, signed int, signed char);
extern unsigned int (*v4) (unsigned short, signed int, signed char);
extern signed int v5 (unsigned char, unsigned int, signed int);
extern signed int (*v6) (unsigned char, unsigned int, signed int);
extern signed short v7 (signed char, signed int, signed short);
extern signed short (*v8) (signed char, signed int, signed short);
void v9 (unsigned char, signed char, unsigned int);
void (*v10) (unsigned char, signed char, unsigned int) = v9;
extern unsigned char v11 (unsigned char, unsigned short);
extern unsigned char (*v12) (unsigned char, unsigned short);
extern void v13 (unsigned char, unsigned short, signed short, unsigned int);
extern void (*v14) (unsigned char, unsigned short, signed short, unsigned int);
unsigned char v15 (signed char, signed int);
unsigned char (*v16) (signed char, signed int) = v15;
void v17 (unsigned int, unsigned char, signed int);
void (*v18) (unsigned int, unsigned char, signed int) = v17;
extern void v19 (unsigned char, unsigned char, unsigned short, unsigned int);
extern void (*v20) (unsigned char, unsigned char, unsigned short, unsigned int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed char, signed int);
extern signed int (*v26) (signed char, signed int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (signed short, unsigned int);
extern unsigned char (*v30) (signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v120 = 6;
signed short v119 = -1;
unsigned short v118 = 3;

void v17 (unsigned int v121, unsigned char v122, signed int v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 0;
signed short v125 = 3;
signed short v124 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed char v127, signed int v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 6;
unsigned int v130 = 7U;
signed short v129 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned char v132, signed char v133, unsigned int v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed char v137 = -4;
unsigned char v136 = 1;
signed int v135 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
