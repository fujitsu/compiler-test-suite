#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (signed short, signed int, unsigned char);
extern signed short (*v4) (signed short, signed int, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
signed short v7 (signed char, unsigned short);
signed short (*v8) (signed char, unsigned short) = v7;
extern unsigned short v11 (signed char, signed char, signed short);
extern unsigned short (*v12) (signed char, signed char, signed short);
extern unsigned short v13 (unsigned char, signed int, unsigned char, unsigned char);
extern unsigned short (*v14) (unsigned char, signed int, unsigned char, unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (signed int, signed char, signed char, unsigned short);
extern void (*v18) (signed int, signed char, signed char, unsigned short);
extern void v19 (signed int, unsigned char, unsigned char, unsigned int);
extern void (*v20) (signed int, unsigned char, unsigned char, unsigned int);
extern signed int v21 (unsigned int, signed short, signed short, unsigned short);
extern signed int (*v22) (unsigned int, signed short, signed short, unsigned short);
extern signed short v23 (unsigned char, signed char, signed short, unsigned char);
extern signed short (*v24) (unsigned char, signed char, signed short, unsigned char);
extern unsigned char v25 (signed int, unsigned char, signed char, signed int);
extern unsigned char (*v26) (signed int, unsigned char, signed char, signed int);
signed char v27 (signed int);
signed char (*v28) (signed int) = v27;
unsigned short v29 (unsigned short, signed short, signed int, unsigned int);
unsigned short (*v30) (unsigned short, signed short, signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v134 = 2;
unsigned char v133 = 1;
signed short v132 = -3;

unsigned short v29 (unsigned short v135, signed short v136, signed int v137, unsigned int v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned int v141 = 5U;
signed int v140 = -1;
signed short v139 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v27 (signed int v142)
{
history[history_index++] = (int)v142;
{
for (;;) {
unsigned int v145 = 7U;
signed short v144 = 0;
signed char v143 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed char v146, unsigned short v147)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
unsigned short v150 = 1;
unsigned int v149 = 6U;
unsigned char v148 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
