#include <stdlib.h>
extern signed short v1 (signed short, signed int, unsigned short, signed short);
extern signed short (*v2) (signed short, signed int, unsigned short, signed short);
void v3 (signed short);
void (*v4) (signed short) = v3;
extern signed char v5 (unsigned char, signed int, unsigned int);
extern signed char (*v6) (unsigned char, signed int, unsigned int);
signed int v7 (unsigned int, unsigned int, signed char, signed int);
signed int (*v8) (unsigned int, unsigned int, signed char, signed int) = v7;
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed short v13 (unsigned int, signed short, unsigned int, signed int);
extern signed short (*v14) (unsigned int, signed short, unsigned int, signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern void v21 (unsigned int, signed char);
extern void (*v22) (unsigned int, signed char);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern signed short v27 (signed int, unsigned int, unsigned char, unsigned short);
extern signed short (*v28) (signed int, unsigned int, unsigned char, unsigned short);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v125 = 0U;
unsigned int v124 = 5U;
signed int v123 = 1;

void v29 (void)
{
{
for (;;) {
unsigned int v128 = 1U;
unsigned short v127 = 4;
unsigned short v126 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned int v129, unsigned int v130, signed char v131, signed int v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 0U;
signed int v134 = 3;
unsigned char v133 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed short v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
unsigned short v139 = 1;
signed short v138 = 0;
signed short v137 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
