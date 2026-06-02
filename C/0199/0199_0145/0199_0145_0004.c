#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int);
extern signed char (*v2) (unsigned int, unsigned int);
extern signed short v3 (unsigned char, signed short, signed char);
extern signed short (*v4) (unsigned char, signed short, signed char);
extern signed int v5 (signed int, unsigned int);
extern signed int (*v6) (signed int, unsigned int);
extern unsigned int v7 (unsigned int, signed int, signed short, signed int);
extern unsigned int (*v8) (unsigned int, signed int, signed short, signed int);
signed int v9 (signed int, signed short, unsigned char);
signed int (*v10) (signed int, signed short, unsigned char) = v9;
extern void v11 (void);
extern void (*v12) (void);
signed char v13 (void);
signed char (*v14) (void) = v13;
extern signed int v15 (signed int, unsigned char, unsigned short);
extern signed int (*v16) (signed int, unsigned char, unsigned short);
signed char v17 (signed int, unsigned int, unsigned short, unsigned char);
signed char (*v18) (signed int, unsigned int, unsigned short, unsigned char) = v17;
extern unsigned short v19 (unsigned char);
extern unsigned short (*v20) (unsigned char);
void v21 (signed short, unsigned short, unsigned char, unsigned int);
void (*v22) (signed short, unsigned short, unsigned char, unsigned int) = v21;
extern unsigned short v23 (unsigned char, signed char);
extern unsigned short (*v24) (unsigned char, signed char);
extern signed short v27 (unsigned int, unsigned int);
extern signed short (*v28) (unsigned int, unsigned int);
extern unsigned int v29 (unsigned int, signed int, signed char, signed short);
extern unsigned int (*v30) (unsigned int, signed int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v126 = 1;
unsigned char v125 = 4;
unsigned short v124 = 7;

void v21 (signed short v127, unsigned short v128, unsigned char v129, unsigned int v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed short v133 = 2;
signed char v132 = 2;
unsigned char v131 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed int v134, unsigned int v135, unsigned short v136, unsigned char v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = -4;
unsigned int v139 = 6U;
signed short v138 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
unsigned int v143 = 1U;
unsigned char v142 = 5;
signed int v141 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed int v144, signed short v145, unsigned char v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed char v149 = -2;
signed char v148 = 2;
signed short v147 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
