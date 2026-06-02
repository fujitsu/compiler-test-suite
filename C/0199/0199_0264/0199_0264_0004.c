#include <stdlib.h>
extern void v1 (signed int, unsigned char, signed int);
extern void (*v2) (signed int, unsigned char, signed int);
extern unsigned int v3 (signed short, unsigned char);
extern unsigned int (*v4) (signed short, unsigned char);
extern signed char v5 (unsigned int, signed short);
extern signed char (*v6) (unsigned int, signed short);
unsigned short v7 (unsigned int, unsigned short, signed char, unsigned int);
unsigned short (*v8) (unsigned int, unsigned short, signed char, unsigned int) = v7;
extern signed int v9 (signed short);
extern signed int (*v10) (signed short);
unsigned short v11 (signed char, unsigned short, unsigned short);
unsigned short (*v12) (signed char, unsigned short, unsigned short) = v11;
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern unsigned short v15 (signed int, unsigned int, signed int, signed int);
extern unsigned short (*v16) (signed int, unsigned int, signed int, signed int);
extern signed int v19 (void);
extern signed int (*v20) (void);
void v21 (unsigned char);
void (*v22) (unsigned char) = v21;
unsigned char v23 (signed int);
unsigned char (*v24) (signed int) = v23;
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed short v27 (signed char, unsigned short, unsigned int, unsigned int);
extern signed short (*v28) (signed char, unsigned short, unsigned int, unsigned int);
signed int v29 (unsigned short, signed int);
signed int (*v30) (unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v117 = -2;
signed short v116 = 1;
signed char v115 = -3;

signed int v29 (unsigned short v118, signed int v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 4;
unsigned short v121 = 7;
signed char v120 = -3;
trace++;
switch (trace)
{
case 9: 
return v119;
case 11: 
return v119;
default: abort ();
}
}
}
}

unsigned char v23 (signed int v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
signed int v126 = 0;
signed short v125 = -3;
signed char v124 = -2;
trace++;
switch (trace)
{
case 4: 
return 3;
default: abort ();
}
}
}
}

void v21 (unsigned char v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
unsigned short v130 = 2;
signed char v129 = -3;
signed char v128 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed char v131, unsigned short v132, unsigned short v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed short v136 = 2;
signed short v135 = 1;
signed int v134 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v137, unsigned short v138, signed char v139, unsigned int v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned short v143 = 7;
signed int v142 = -1;
unsigned char v141 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
