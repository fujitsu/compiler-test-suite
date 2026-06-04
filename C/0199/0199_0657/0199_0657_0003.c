#include <stdlib.h>
extern signed char v1 (signed short, signed int);
extern signed char (*v2) (signed short, signed int);
extern unsigned int v3 (unsigned char, signed short, signed int, unsigned short);
extern unsigned int (*v4) (unsigned char, signed short, signed int, unsigned short);
unsigned int v7 (unsigned int, unsigned short, signed short, unsigned int);
unsigned int (*v8) (unsigned int, unsigned short, signed short, unsigned int) = v7;
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern unsigned char v11 (unsigned short, signed int, unsigned int, unsigned short);
extern unsigned char (*v12) (unsigned short, signed int, unsigned int, unsigned short);
unsigned char v13 (signed int, signed int, unsigned char, unsigned short);
unsigned char (*v14) (signed int, signed int, unsigned char, unsigned short) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
signed short v19 (signed short, signed short, unsigned int);
signed short (*v20) (signed short, signed short, unsigned int) = v19;
extern signed char v21 (signed int, signed short, unsigned int, unsigned int);
extern signed char (*v22) (signed int, signed short, unsigned int, unsigned int);
unsigned char v23 (signed char, signed short);
unsigned char (*v24) (signed char, signed short) = v23;
extern signed short v25 (signed char, signed int, unsigned int, signed short);
extern signed short (*v26) (signed char, signed int, unsigned int, signed short);
extern unsigned char v27 (unsigned int, signed int, unsigned short, signed int);
extern unsigned char (*v28) (unsigned int, signed int, unsigned short, signed int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v117 = 3;
unsigned short v116 = 4;
signed char v115 = 1;

unsigned char v23 (signed char v118, signed short v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 6U;
unsigned short v121 = 7;
unsigned short v120 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed short v123, signed short v124, unsigned int v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned char v128 = 6;
signed short v127 = 3;
signed int v126 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed int v129, signed int v130, unsigned char v131, unsigned short v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = -2;
signed short v134 = -4;
signed char v133 = 1;
trace++;
switch (trace)
{
case 6: 
return v131;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned int v136, unsigned short v137, signed short v138, unsigned int v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned char v142 = 4;
unsigned short v141 = 5;
signed int v140 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
