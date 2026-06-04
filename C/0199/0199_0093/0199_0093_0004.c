#include <stdlib.h>
extern unsigned char v1 (signed int, signed short, unsigned char, unsigned int);
extern unsigned char (*v2) (signed int, signed short, unsigned char, unsigned int);
extern unsigned short v3 (signed short, unsigned char, unsigned short, signed int);
extern unsigned short (*v4) (signed short, unsigned char, unsigned short, signed int);
unsigned int v5 (signed char, signed int, signed int);
unsigned int (*v6) (signed char, signed int, signed int) = v5;
extern signed char v7 (unsigned int, unsigned int);
extern signed char (*v8) (unsigned int, unsigned int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned short v13 (signed short, unsigned short, signed short);
extern unsigned short (*v14) (signed short, unsigned short, signed short);
signed int v15 (signed int, signed short);
signed int (*v16) (signed int, signed short) = v15;
extern signed int v17 (unsigned short, signed char, signed int, signed char);
extern signed int (*v18) (unsigned short, signed char, signed int, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed char v21 (signed short, unsigned short, signed int, unsigned int);
extern signed char (*v22) (signed short, unsigned short, signed int, unsigned int);
void v23 (unsigned short, signed int, signed int, signed char);
void (*v24) (unsigned short, signed int, signed int, signed char) = v23;
extern signed char v25 (unsigned int, unsigned short);
extern signed char (*v26) (unsigned int, unsigned short);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern void v29 (unsigned short, signed short, signed short);
extern void (*v30) (unsigned short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v134 = -1;
signed char v133 = 1;
unsigned int v132 = 1U;

void v23 (unsigned short v135, signed int v136, signed int v137, signed char v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed short v141 = 0;
signed short v140 = -3;
signed short v139 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed int v142, signed short v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned short v146 = 5;
unsigned int v145 = 5U;
unsigned int v144 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed char v147, signed int v148, signed int v149)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
unsigned short v152 = 0;
signed char v151 = -4;
signed short v150 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
