#include <stdlib.h>
extern signed short v1 (unsigned short, signed short, unsigned char);
extern signed short (*v2) (unsigned short, signed short, unsigned char);
extern signed int v3 (signed int, signed short, unsigned short);
extern signed int (*v4) (signed int, signed short, unsigned short);
extern void v5 (unsigned short, signed char);
extern void (*v6) (unsigned short, signed char);
extern unsigned int v7 (signed short, unsigned int);
extern unsigned int (*v8) (signed short, unsigned int);
extern unsigned short v9 (unsigned int, signed char);
extern unsigned short (*v10) (unsigned int, signed char);
extern signed char v11 (signed char, signed char);
extern signed char (*v12) (signed char, signed char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
unsigned short v15 (unsigned short);
unsigned short (*v16) (unsigned short) = v15;
extern signed int v17 (unsigned short, signed int);
extern signed int (*v18) (unsigned short, signed int);
extern signed char v19 (signed int, signed int);
extern signed char (*v20) (signed int, signed int);
unsigned int v21 (unsigned char, signed char, unsigned int);
unsigned int (*v22) (unsigned char, signed char, unsigned int) = v21;
void v23 (signed short, unsigned int, signed short);
void (*v24) (signed short, unsigned int, signed short) = v23;
extern signed char v25 (unsigned short, unsigned char, signed char, signed int);
extern signed char (*v26) (unsigned short, unsigned char, signed char, signed int);
extern signed short v29 (signed char, unsigned char);
extern signed short (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v136 = 2;
unsigned char v135 = 4;
signed int v134 = -1;

void v23 (signed short v137, unsigned int v138, signed short v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed short v142 = 2;
signed int v141 = 2;
unsigned short v140 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (unsigned char v143, signed char v144, unsigned int v145)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned int v148 = 3U;
signed int v147 = 3;
unsigned short v146 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned short v149)
{
history[history_index++] = (int)v149;
{
for (;;) {
signed char v152 = 3;
signed char v151 = 2;
signed char v150 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
