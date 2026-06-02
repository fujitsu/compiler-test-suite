#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
signed short v5 (unsigned char, signed int, unsigned char, unsigned int);
signed short (*v6) (unsigned char, signed int, unsigned char, unsigned int) = v5;
extern signed int v7 (signed short, unsigned int, signed char, signed int);
extern signed int (*v8) (signed short, unsigned int, signed char, signed int);
unsigned short v9 (signed short, signed char);
unsigned short (*v10) (signed short, signed char) = v9;
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern unsigned short v13 (signed char, signed char);
extern unsigned short (*v14) (signed char, signed char);
extern void v15 (void);
extern void (*v16) (void);
signed int v17 (signed char);
signed int (*v18) (signed char) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v23 (signed short, unsigned char, signed short, signed short);
extern signed int (*v24) (signed short, unsigned char, signed short, signed short);
extern unsigned char v25 (unsigned char, unsigned char);
extern unsigned char (*v26) (unsigned char, unsigned char);
extern unsigned int v27 (signed int, signed short, unsigned short);
extern unsigned int (*v28) (signed int, signed short, unsigned short);
extern signed short v29 (signed short, unsigned int, unsigned char, unsigned char);
extern signed short (*v30) (signed short, unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v125 = 0;
unsigned int v124 = 7U;
unsigned int v123 = 2U;

signed int v17 (signed char v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 1U;
signed char v128 = 1;
signed int v127 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed short v130, signed char v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 1U;
unsigned char v133 = 6;
signed char v132 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned char v135, signed int v136, unsigned char v137, unsigned int v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned short v141 = 1;
signed short v140 = -3;
signed char v139 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
