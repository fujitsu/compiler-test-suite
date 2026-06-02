#include <stdlib.h>
extern signed int v3 (unsigned short, unsigned char);
extern signed int (*v4) (unsigned short, unsigned char);
extern void v5 (signed int, unsigned int, unsigned char);
extern void (*v6) (signed int, unsigned int, unsigned char);
extern signed int v7 (unsigned int, signed short, unsigned int);
extern signed int (*v8) (unsigned int, signed short, unsigned int);
void v9 (unsigned int, signed short);
void (*v10) (unsigned int, signed short) = v9;
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
signed int v13 (unsigned int, unsigned int, unsigned int);
signed int (*v14) (unsigned int, unsigned int, unsigned int) = v13;
extern signed short v15 (unsigned short, unsigned char);
extern signed short (*v16) (unsigned short, unsigned char);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
signed char v19 (signed short, signed int, signed char, unsigned short);
signed char (*v20) (signed short, signed int, signed char, unsigned short) = v19;
extern signed char v21 (unsigned char, unsigned int, signed int, unsigned short);
extern signed char (*v22) (unsigned char, unsigned int, signed int, unsigned short);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern signed short v25 (signed int, signed char, signed short);
extern signed short (*v26) (signed int, signed char, signed short);
extern void v27 (unsigned char, unsigned char, unsigned int, unsigned short);
extern void (*v28) (unsigned char, unsigned char, unsigned int, unsigned short);
extern signed short v29 (signed short, signed int, signed int);
extern signed short (*v30) (signed short, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v126 = 0;
signed short v125 = 0;
signed short v124 = -2;

unsigned int v23 (void)
{
{
for (;;) {
signed int v129 = -4;
signed short v128 = -2;
signed int v127 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed short v130, signed int v131, signed char v132, unsigned short v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned char v136 = 1;
signed int v135 = -4;
unsigned int v134 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned int v137, unsigned int v138, unsigned int v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed char v142 = 0;
signed short v141 = 3;
unsigned int v140 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned int v143, signed short v144)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed short v147 = -2;
unsigned char v146 = 5;
signed short v145 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
