#include <stdlib.h>
extern unsigned short v1 (signed int, signed char, unsigned short, signed short);
extern unsigned short (*v2) (signed int, signed char, unsigned short, signed short);
extern unsigned char v3 (unsigned short, signed int, unsigned int, unsigned short);
extern unsigned char (*v4) (unsigned short, signed int, unsigned int, unsigned short);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
extern unsigned char v9 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v10) (unsigned char, unsigned short, unsigned short);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern void v17 (unsigned short, unsigned char, unsigned char);
extern void (*v18) (unsigned short, unsigned char, unsigned char);
extern signed int v19 (unsigned char, unsigned short);
extern signed int (*v20) (unsigned char, unsigned short);
void v23 (unsigned int, unsigned char, signed int);
void (*v24) (unsigned int, unsigned char, signed int) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
unsigned char v29 (unsigned int, unsigned short, signed short, signed short);
unsigned char (*v30) (unsigned int, unsigned short, signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v134 = 2;
signed char v133 = -2;
unsigned char v132 = 3;

unsigned char v29 (unsigned int v135, unsigned short v136, signed short v137, signed short v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned char v141 = 4;
unsigned int v140 = 6U;
signed char v139 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (unsigned int v142, unsigned char v143, signed int v144)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned char v147 = 6;
signed int v146 = -3;
signed char v145 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
