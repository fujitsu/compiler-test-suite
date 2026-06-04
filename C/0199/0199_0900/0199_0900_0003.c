#include <stdlib.h>
extern void v1 (signed char, signed int, unsigned char);
extern void (*v2) (signed char, signed int, unsigned char);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern signed char v5 (signed char, signed short, unsigned short);
extern signed char (*v6) (signed char, signed short, unsigned short);
extern void v7 (void);
extern void (*v8) (void);
extern void v9 (signed int, signed char, signed char, unsigned int);
extern void (*v10) (signed int, signed char, signed char, unsigned int);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (signed char, signed int, signed int, signed int);
extern unsigned short (*v18) (signed char, signed int, signed int, signed int);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
void v23 (signed short, signed int, signed int);
void (*v24) (signed short, signed int, signed int) = v23;
unsigned int v25 (signed int, signed short, signed short, unsigned int);
unsigned int (*v26) (signed int, signed short, signed short, unsigned int) = v25;
extern void v27 (unsigned short, unsigned int, signed int);
extern void (*v28) (unsigned short, unsigned int, signed int);
extern void v29 (signed short, unsigned int, signed int);
extern void (*v30) (signed short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v133 = 7;
unsigned char v132 = 5;
unsigned int v131 = 2U;

unsigned int v25 (signed int v134, signed short v135, signed short v136, unsigned int v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed int v140 = -3;
unsigned short v139 = 2;
signed short v138 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed short v141, signed int v142, signed int v143)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed char v146 = -2;
unsigned int v145 = 6U;
unsigned char v144 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
