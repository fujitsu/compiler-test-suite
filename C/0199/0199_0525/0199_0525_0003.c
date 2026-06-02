#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
extern void v3 (signed int, signed char, unsigned short);
extern void (*v4) (signed int, signed char, unsigned short);
unsigned short v5 (unsigned short, signed int, signed short, unsigned char);
unsigned short (*v6) (unsigned short, signed int, signed short, unsigned char) = v5;
extern unsigned int v7 (signed int, signed char, signed short);
extern unsigned int (*v8) (signed int, signed char, signed short);
extern void v9 (unsigned short, unsigned short, signed int, signed char);
extern void (*v10) (unsigned short, unsigned short, signed int, signed char);
signed int v11 (signed int, unsigned short, unsigned char, unsigned char);
signed int (*v12) (signed int, unsigned short, unsigned char, unsigned char) = v11;
extern signed short v13 (signed short, signed int);
extern signed short (*v14) (signed short, signed int);
extern void v15 (unsigned char, signed char);
extern void (*v16) (unsigned char, signed char);
extern signed char v17 (unsigned short, signed char);
extern signed char (*v18) (unsigned short, signed char);
extern signed short v19 (signed char);
extern signed short (*v20) (signed char);
extern void v21 (unsigned int, unsigned short, signed int, signed char);
extern void (*v22) (unsigned int, unsigned short, signed int, signed char);
extern unsigned char v23 (unsigned char, signed short, signed char);
extern unsigned char (*v24) (unsigned char, signed short, signed char);
extern signed int v25 (unsigned int, signed short, unsigned int);
extern signed int (*v26) (unsigned int, signed short, unsigned int);
signed short v27 (unsigned short, unsigned char, signed char);
signed short (*v28) (unsigned short, unsigned char, signed char) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v126 = 1;
signed short v125 = 1;
unsigned short v124 = 4;

signed short v27 (unsigned short v127, unsigned char v128, signed char v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 0;
unsigned int v131 = 2U;
signed int v130 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed int v133, unsigned short v134, unsigned char v135, unsigned char v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed int v139 = 2;
signed char v138 = 0;
unsigned int v137 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned short v140, signed int v141, signed short v142, unsigned char v143)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed int v146 = 2;
signed short v145 = 1;
unsigned char v144 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
