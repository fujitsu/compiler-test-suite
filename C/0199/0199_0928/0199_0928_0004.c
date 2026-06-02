#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned char v3 (unsigned short, signed int);
extern unsigned char (*v4) (unsigned short, signed int);
signed int v5 (signed short);
signed int (*v6) (signed short) = v5;
extern unsigned short v7 (signed int, unsigned int, signed short);
extern unsigned short (*v8) (signed int, unsigned int, signed short);
unsigned short v9 (unsigned short, signed char, signed short);
unsigned short (*v10) (unsigned short, signed char, signed short) = v9;
signed short v11 (signed char);
signed short (*v12) (signed char) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned int v15 (signed int, signed int);
extern unsigned int (*v16) (signed int, signed int);
unsigned char v17 (unsigned short, signed short);
unsigned char (*v18) (unsigned short, signed short) = v17;
extern void v19 (signed short, unsigned short, unsigned char);
extern void (*v20) (signed short, unsigned short, unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed char v23 (signed int, signed char, unsigned short, unsigned short);
extern signed char (*v24) (signed int, signed char, unsigned short, unsigned short);
extern void v25 (signed short, signed char, unsigned short, unsigned char);
extern void (*v26) (signed short, signed char, unsigned short, unsigned char);
extern unsigned int v27 (signed char, signed short, signed int);
extern unsigned int (*v28) (signed char, signed short, signed int);
extern signed short v29 (signed char, unsigned int);
extern signed short (*v30) (signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v132 = 0;
unsigned char v131 = 1;
unsigned short v130 = 6;

unsigned char v17 (unsigned short v133, signed short v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned int v137 = 5U;
unsigned char v136 = 1;
unsigned short v135 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v138)
{
history[history_index++] = (int)v138;
{
for (;;) {
signed char v141 = -2;
unsigned int v140 = 0U;
unsigned char v139 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v142, signed char v143, signed short v144)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed int v147 = -4;
signed int v146 = -1;
signed short v145 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed short v148)
{
history[history_index++] = (int)v148;
{
for (;;) {
unsigned short v151 = 2;
signed int v150 = 1;
unsigned int v149 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
