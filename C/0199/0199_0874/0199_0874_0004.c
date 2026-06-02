#include <stdlib.h>
extern unsigned int v1 (signed short);
extern unsigned int (*v2) (signed short);
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
extern unsigned short v5 (signed int, signed char, unsigned int);
extern unsigned short (*v6) (signed int, signed char, unsigned int);
extern void v7 (signed short, unsigned int);
extern void (*v8) (signed short, unsigned int);
extern void v9 (void);
extern void (*v10) (void);
extern signed char v11 (signed short, unsigned char);
extern signed char (*v12) (signed short, unsigned char);
unsigned int v13 (signed char, unsigned int, signed char, signed char);
unsigned int (*v14) (signed char, unsigned int, signed char, signed char) = v13;
extern signed char v15 (unsigned int, signed int, signed char, signed short);
extern signed char (*v16) (unsigned int, signed int, signed char, signed short);
unsigned short v19 (signed int, unsigned int, unsigned short);
unsigned short (*v20) (signed int, unsigned int, unsigned short) = v19;
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern signed char v23 (signed char, unsigned int);
extern signed char (*v24) (signed char, unsigned int);
extern unsigned int v25 (signed short);
extern unsigned int (*v26) (signed short);
unsigned int v27 (unsigned int, unsigned short);
unsigned int (*v28) (unsigned int, unsigned short) = v27;
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v122 = 5;
unsigned char v121 = 6;
signed char v120 = 2;

unsigned int v27 (unsigned int v123, unsigned short v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 4;
signed int v126 = -1;
unsigned short v125 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed int v128, unsigned int v129, unsigned short v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed short v133 = -4;
signed char v132 = 3;
signed short v131 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed char v134, unsigned int v135, signed char v136, signed char v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = 1;
unsigned short v139 = 4;
signed short v138 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
