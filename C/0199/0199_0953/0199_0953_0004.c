#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
signed int v3 (unsigned short);
signed int (*v4) (unsigned short) = v3;
extern signed short v5 (signed short, unsigned char, unsigned char);
extern signed short (*v6) (signed short, unsigned char, unsigned char);
extern unsigned char v7 (unsigned char, unsigned int, signed int, unsigned int);
extern unsigned char (*v8) (unsigned char, unsigned int, signed int, unsigned int);
extern signed char v9 (unsigned char, unsigned int, signed short);
extern signed char (*v10) (unsigned char, unsigned int, signed short);
extern unsigned char v11 (unsigned short, signed short);
extern unsigned char (*v12) (unsigned short, signed short);
extern void v13 (unsigned short, signed short);
extern void (*v14) (unsigned short, signed short);
extern unsigned int v15 (signed short, unsigned short);
extern unsigned int (*v16) (signed short, unsigned short);
extern unsigned int v17 (signed int, signed short);
extern unsigned int (*v18) (signed int, signed short);
extern unsigned char v19 (signed char, unsigned char, unsigned char);
extern unsigned char (*v20) (signed char, unsigned char, unsigned char);
extern signed int v21 (signed int, signed short);
extern signed int (*v22) (signed int, signed short);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern void v25 (unsigned char, unsigned short);
extern void (*v26) (unsigned char, unsigned short);
extern void v27 (signed int, signed short);
extern void (*v28) (signed int, signed short);
void v29 (unsigned int, unsigned char, unsigned short, signed int);
void (*v30) (unsigned int, unsigned char, unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v134 = 0;
signed char v133 = 2;
unsigned short v132 = 5;

void v29 (unsigned int v135, unsigned char v136, unsigned short v137, signed int v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed short v141 = 0;
signed short v140 = -4;
unsigned short v139 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (void)
{
{
for (;;) {
signed char v144 = 2;
unsigned int v143 = 4U;
unsigned char v142 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned short v145)
{
history[history_index++] = (int)v145;
{
for (;;) {
unsigned char v148 = 4;
signed short v147 = -2;
signed char v146 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
