#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned char);
extern unsigned int (*v2) (unsigned char, unsigned char);
signed short v3 (signed char);
signed short (*v4) (signed char) = v3;
extern unsigned short v5 (signed int, unsigned char, signed int);
extern unsigned short (*v6) (signed int, unsigned char, signed int);
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
unsigned short v9 (signed int, signed short, signed int);
unsigned short (*v10) (signed int, signed short, signed int) = v9;
signed char v11 (unsigned int, unsigned char);
signed char (*v12) (unsigned int, unsigned char) = v11;
extern unsigned short v13 (unsigned int, unsigned short);
extern unsigned short (*v14) (unsigned int, unsigned short);
extern signed int v15 (signed int, signed int, unsigned char);
extern signed int (*v16) (signed int, signed int, unsigned char);
extern unsigned int v17 (unsigned char, unsigned short, signed int, unsigned int);
extern unsigned int (*v18) (unsigned char, unsigned short, signed int, unsigned int);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern unsigned int v23 (signed short, signed int, unsigned char);
extern unsigned int (*v24) (signed short, signed int, unsigned char);
extern signed int v25 (unsigned short, unsigned int, signed int);
extern signed int (*v26) (unsigned short, unsigned int, signed int);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern signed char v29 (signed short, signed char, signed char, signed short);
extern signed char (*v30) (signed short, signed char, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v121 = -1;
signed char v120 = 3;
unsigned int v119 = 4U;

signed int v27 (void)
{
{
for (;;) {
signed int v124 = -4;
signed char v123 = -1;
signed char v122 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned int v125, unsigned char v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = -3;
unsigned int v128 = 2U;
unsigned short v127 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v130, signed short v131, signed int v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = 1;
signed int v134 = -2;
unsigned short v133 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed char v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
unsigned short v139 = 6;
signed char v138 = -3;
signed char v137 = 3;
trace++;
switch (trace)
{
case 1: 
return -4;
case 6: 
return -2;
default: abort ();
}
}
}
}
