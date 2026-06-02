#include <stdlib.h>
extern signed int v1 (signed int);
extern signed int (*v2) (signed int);
extern unsigned int v3 (unsigned int, signed int, unsigned short, signed char);
extern unsigned int (*v4) (unsigned int, signed int, unsigned short, signed char);
extern unsigned short v5 (signed int, signed char);
extern unsigned short (*v6) (signed int, signed char);
extern unsigned short v7 (signed short, signed int, signed int, signed int);
extern unsigned short (*v8) (signed short, signed int, signed int, signed int);
void v9 (signed int);
void (*v10) (signed int) = v9;
extern signed int v11 (unsigned int, unsigned char);
extern signed int (*v12) (unsigned int, unsigned char);
extern signed int v13 (unsigned char, unsigned short, unsigned char);
extern signed int (*v14) (unsigned char, unsigned short, unsigned char);
extern void v15 (unsigned int, unsigned int, unsigned short);
extern void (*v16) (unsigned int, unsigned int, unsigned short);
extern unsigned int v19 (signed int, unsigned char, unsigned char);
extern unsigned int (*v20) (signed int, unsigned char, unsigned char);
extern unsigned char v21 (signed char, signed int, signed short);
extern unsigned char (*v22) (signed char, signed int, signed short);
signed short v23 (void);
signed short (*v24) (void) = v23;
signed int v25 (unsigned short, signed int, unsigned int);
signed int (*v26) (unsigned short, signed int, unsigned int) = v25;
extern unsigned char v27 (unsigned short, signed int, unsigned int, unsigned int);
extern unsigned char (*v28) (unsigned short, signed int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v134 = 6U;
signed short v133 = -4;
signed char v132 = 3;

signed int v25 (unsigned short v135, signed int v136, unsigned int v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned int v140 = 4U;
signed char v139 = -1;
signed int v138 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (void)
{
{
for (;;) {
signed short v143 = 0;
unsigned int v142 = 1U;
unsigned short v141 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v144)
{
history[history_index++] = (int)v144;
{
for (;;) {
unsigned char v147 = 1;
signed char v146 = -2;
signed short v145 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
