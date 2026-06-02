#include <stdlib.h>
signed char v3 (unsigned short, signed char, unsigned char);
signed char (*v4) (unsigned short, signed char, unsigned char) = v3;
extern signed char v5 (unsigned short, signed char, unsigned int, signed short);
extern signed char (*v6) (unsigned short, signed char, unsigned int, signed short);
extern signed short v7 (signed short, unsigned short, signed int);
extern signed short (*v8) (signed short, unsigned short, signed int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (signed char);
extern signed short (*v12) (signed char);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern signed char v15 (signed int, signed short, signed char, signed int);
extern signed char (*v16) (signed int, signed short, signed char, signed int);
signed int v19 (signed short, unsigned short);
signed int (*v20) (signed short, unsigned short) = v19;
extern unsigned int v21 (signed char, signed int, unsigned short);
extern unsigned int (*v22) (signed char, signed int, unsigned short);
extern unsigned char v23 (unsigned char, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned char, unsigned char, unsigned char);
extern void v25 (signed char, signed short, unsigned short);
extern void (*v26) (signed char, signed short, unsigned short);
extern void v27 (signed char, unsigned short, unsigned char, unsigned int);
extern void (*v28) (signed char, unsigned short, unsigned char, unsigned int);
unsigned short v29 (unsigned char, unsigned char, signed short, unsigned int);
unsigned short (*v30) (unsigned char, unsigned char, signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v123 = -1;
unsigned short v122 = 6;
signed int v121 = -4;

unsigned short v29 (unsigned char v124, unsigned char v125, signed short v126, unsigned int v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned int v130 = 2U;
unsigned short v129 = 2;
unsigned short v128 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed short v131, unsigned short v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = 3;
signed int v134 = -2;
unsigned int v133 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned short v136, signed char v137, unsigned char v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed short v141 = -1;
unsigned char v140 = 3;
signed int v139 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
