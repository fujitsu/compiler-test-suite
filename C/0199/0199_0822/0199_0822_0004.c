#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (unsigned char, unsigned char, unsigned short);
extern signed short (*v4) (unsigned char, unsigned char, unsigned short);
extern signed char v5 (signed short, signed short);
extern signed char (*v6) (signed short, signed short);
extern void v7 (signed int, unsigned int, signed char, unsigned short);
extern void (*v8) (signed int, unsigned int, signed char, unsigned short);
extern signed short v9 (unsigned int, unsigned char);
extern signed short (*v10) (unsigned int, unsigned char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned short v13 (signed short, signed char);
extern unsigned short (*v14) (signed short, signed char);
extern unsigned short v15 (unsigned int);
extern unsigned short (*v16) (unsigned int);
extern signed int v17 (unsigned char, unsigned int, unsigned short);
extern signed int (*v18) (unsigned char, unsigned int, unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
signed int v21 (unsigned short, signed short);
signed int (*v22) (unsigned short, signed short) = v21;
void v23 (signed char, unsigned char, unsigned short);
void (*v24) (signed char, unsigned char, unsigned short) = v23;
extern unsigned short v25 (signed char, unsigned int);
extern unsigned short (*v26) (signed char, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v130 = 1;
signed short v129 = 0;
unsigned int v128 = 2U;

void v23 (signed char v131, unsigned char v132, unsigned short v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned char v136 = 1;
unsigned int v135 = 6U;
unsigned int v134 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned short v137, signed short v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed char v141 = -4;
unsigned int v140 = 4U;
unsigned char v139 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
