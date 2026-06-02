#include <stdlib.h>
extern signed short v1 (unsigned int);
extern signed short (*v2) (unsigned int);
extern unsigned char v3 (signed short, signed short);
extern unsigned char (*v4) (signed short, signed short);
extern unsigned int v5 (signed int, unsigned int);
extern unsigned int (*v6) (signed int, unsigned int);
extern unsigned char v7 (unsigned short, signed int, unsigned short);
extern unsigned char (*v8) (unsigned short, signed int, unsigned short);
extern unsigned int v9 (signed short, signed char, unsigned int);
extern unsigned int (*v10) (signed short, signed char, unsigned int);
extern unsigned char v11 (signed char, unsigned int);
extern unsigned char (*v12) (signed char, unsigned int);
signed char v13 (signed int, signed char, unsigned int, signed short);
signed char (*v14) (signed int, signed char, unsigned int, signed short) = v13;
signed char v15 (unsigned int, unsigned short, unsigned short, signed int);
signed char (*v16) (unsigned int, unsigned short, unsigned short, signed int) = v15;
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern unsigned char v19 (signed short, unsigned char, unsigned short);
extern unsigned char (*v20) (signed short, unsigned char, unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed short v25 (unsigned char, unsigned char, signed int);
extern signed short (*v26) (unsigned char, unsigned char, signed int);
signed short v27 (signed short);
signed short (*v28) (signed short) = v27;
unsigned char v29 (unsigned short, unsigned int, unsigned short);
unsigned char (*v30) (unsigned short, unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v124 = 5U;
signed char v123 = -4;
unsigned int v122 = 3U;

unsigned char v29 (unsigned short v125, unsigned int v126, unsigned short v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned int v130 = 7U;
signed int v129 = -2;
signed short v128 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v27 (signed short v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = 2;
signed char v133 = 0;
unsigned int v132 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned int v135, unsigned short v136, unsigned short v137, signed int v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned int v141 = 6U;
unsigned int v140 = 2U;
unsigned char v139 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed int v142, signed char v143, unsigned int v144, signed short v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed int v148 = 0;
signed int v147 = 2;
signed int v146 = 2;
trace++;
switch (trace)
{
case 1: 
return v143;
default: abort ();
}
}
}
}
