#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed short);
extern unsigned int (*v2) (unsigned char, signed short);
extern signed short v3 (unsigned int, unsigned short, unsigned char);
extern signed short (*v4) (unsigned int, unsigned short, unsigned char);
extern unsigned char v5 (signed short, unsigned short, unsigned short);
extern unsigned char (*v6) (signed short, unsigned short, unsigned short);
signed int v7 (unsigned char);
signed int (*v8) (unsigned char) = v7;
extern unsigned short v9 (signed int, unsigned int, unsigned char);
extern unsigned short (*v10) (signed int, unsigned int, unsigned char);
extern unsigned int v11 (unsigned short, signed int);
extern unsigned int (*v12) (unsigned short, signed int);
extern signed int v13 (signed short, signed short);
extern signed int (*v14) (signed short, signed short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
signed short v17 (unsigned int, signed short, unsigned char, signed int);
signed short (*v18) (unsigned int, signed short, unsigned char, signed int) = v17;
extern unsigned int v19 (signed short, signed short, signed char, signed char);
extern unsigned int (*v20) (signed short, signed short, signed char, signed char);
extern unsigned char v23 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned int, unsigned char, unsigned char);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
unsigned int v27 (signed char);
unsigned int (*v28) (signed char) = v27;
unsigned char v29 (signed int, signed short, unsigned short);
unsigned char (*v30) (signed int, signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v118 = 4;
signed int v117 = 1;
unsigned char v116 = 5;

unsigned char v29 (signed int v119, signed short v120, unsigned short v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 7;
unsigned char v123 = 4;
unsigned int v122 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (signed char v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
unsigned char v128 = 4;
unsigned short v127 = 5;
signed int v126 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned int v129, signed short v130, unsigned char v131, signed int v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = -2;
unsigned short v134 = 2;
unsigned char v133 = 7;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

signed int v7 (unsigned char v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
unsigned int v139 = 4U;
signed char v138 = 0;
signed int v137 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
