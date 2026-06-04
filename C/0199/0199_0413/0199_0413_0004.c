#include <stdlib.h>
extern signed short v3 (void);
extern signed short (*v4) (void);
unsigned char v5 (signed short, unsigned char, unsigned short);
unsigned char (*v6) (signed short, unsigned char, unsigned short) = v5;
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern signed short v9 (signed int, signed short);
extern signed short (*v10) (signed int, signed short);
extern void v11 (signed int, signed int, signed int);
extern void (*v12) (signed int, signed int, signed int);
extern unsigned int v13 (signed char, signed char, signed char);
extern unsigned int (*v14) (signed char, signed char, signed char);
extern unsigned short v15 (unsigned char, signed int);
extern unsigned short (*v16) (unsigned char, signed int);
unsigned char v17 (unsigned short);
unsigned char (*v18) (unsigned short) = v17;
void v19 (unsigned char, unsigned int);
void (*v20) (unsigned char, unsigned int) = v19;
unsigned short v21 (unsigned int, unsigned int, unsigned short, signed char);
unsigned short (*v22) (unsigned int, unsigned int, unsigned short, signed char) = v21;
extern unsigned int v23 (signed short, signed int, unsigned int);
extern unsigned int (*v24) (signed short, signed int, unsigned int);
signed int v25 (signed int, signed short);
signed int (*v26) (signed int, signed short) = v25;
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v119 = 5;
signed char v118 = -2;
signed short v117 = 0;

signed int v25 (signed int v120, signed short v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = -3;
signed char v123 = -1;
unsigned int v122 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned int v125, unsigned int v126, unsigned short v127, signed char v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned short v131 = 4;
unsigned short v130 = 7;
unsigned short v129 = 7;
trace++;
switch (trace)
{
case 4: 
return v131;
case 6: 
return v129;
default: abort ();
}
}
}
}

void v19 (unsigned char v132, unsigned int v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 6;
signed int v135 = 1;
signed char v134 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned short v137)
{
history[history_index++] = (int)v137;
{
for (;;) {
unsigned char v140 = 0;
signed char v139 = -2;
unsigned int v138 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed short v141, unsigned char v142, unsigned short v143)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned int v146 = 2U;
signed int v145 = 1;
unsigned int v144 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
