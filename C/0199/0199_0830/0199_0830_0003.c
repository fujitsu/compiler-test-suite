#include <stdlib.h>
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern signed char v5 (signed int, unsigned int);
extern signed char (*v6) (signed int, unsigned int);
extern void v7 (unsigned short, signed short);
extern void (*v8) (unsigned short, signed short);
extern unsigned short v9 (unsigned short, signed int);
extern unsigned short (*v10) (unsigned short, signed int);
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
signed char v13 (signed int, signed short);
signed char (*v14) (signed int, signed short) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
signed short v17 (unsigned char, unsigned int, unsigned int, signed char);
signed short (*v18) (unsigned char, unsigned int, unsigned int, signed char) = v17;
extern signed short v19 (signed int, signed char, unsigned short, signed char);
extern signed short (*v20) (signed int, signed char, unsigned short, signed char);
extern signed int v21 (unsigned int, unsigned short);
extern signed int (*v22) (unsigned int, unsigned short);
extern unsigned short v23 (unsigned int, unsigned int, signed char, unsigned int);
extern unsigned short (*v24) (unsigned int, unsigned int, signed char, unsigned int);
extern signed int v25 (unsigned char, signed char, signed short, signed char);
extern signed int (*v26) (unsigned char, signed char, signed short, signed char);
void v27 (unsigned int, unsigned int, signed char, unsigned int);
void (*v28) (unsigned int, unsigned int, signed char, unsigned int) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed char v122 = -1;
signed int v121 = 1;
unsigned char v120 = 3;

void v27 (unsigned int v123, unsigned int v124, signed char v125, unsigned int v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = 1;
signed short v128 = -1;
signed int v127 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned char v130, unsigned int v131, unsigned int v132, signed char v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 6;
signed short v135 = 0;
unsigned short v134 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed int v137, signed short v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = -4;
signed short v140 = 1;
unsigned char v139 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
