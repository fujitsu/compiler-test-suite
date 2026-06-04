#include <stdlib.h>
extern signed char v3 (signed short, signed char, signed char, signed char);
extern signed char (*v4) (signed short, signed char, signed char, signed char);
extern signed char v7 (unsigned char, unsigned short, unsigned char);
extern signed char (*v8) (unsigned char, unsigned short, unsigned char);
void v9 (unsigned short, unsigned char, signed int);
void (*v10) (unsigned short, unsigned char, signed int) = v9;
signed int v11 (signed int);
signed int (*v12) (signed int) = v11;
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned char v15 (unsigned int);
extern unsigned char (*v16) (unsigned int);
extern signed short v17 (unsigned char, unsigned short, signed short);
extern signed short (*v18) (unsigned char, unsigned short, signed short);
extern unsigned char v19 (signed short, unsigned short, signed int);
extern unsigned char (*v20) (signed short, unsigned short, signed int);
void v21 (unsigned char, signed char, unsigned char);
void (*v22) (unsigned char, signed char, unsigned char) = v21;
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern unsigned int v25 (signed char);
extern unsigned int (*v26) (signed char);
extern unsigned int v27 (signed int, unsigned char, unsigned int, signed short);
extern unsigned int (*v28) (signed int, unsigned char, unsigned int, signed short);
signed char v29 (signed short, unsigned short);
signed char (*v30) (signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v119 = 3;
signed int v118 = -3;
signed char v117 = 0;

signed char v29 (signed short v120, unsigned short v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = -3;
unsigned short v123 = 7;
unsigned short v122 = 0;
trace++;
switch (trace)
{
case 11: 
return -2;
default: abort ();
}
}
}
}

void v21 (unsigned char v125, signed char v126, unsigned char v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = 3;
unsigned int v129 = 6U;
unsigned short v128 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed int v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned char v134 = 0;
unsigned char v133 = 3;
signed short v132 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned short v135, unsigned char v136, signed int v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = 1;
signed int v139 = 0;
unsigned int v138 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
