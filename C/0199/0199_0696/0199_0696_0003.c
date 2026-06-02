#include <stdlib.h>
extern signed short v1 (signed short);
extern signed short (*v2) (signed short);
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern unsigned char v5 (unsigned short, unsigned char, signed short);
extern unsigned char (*v6) (unsigned short, unsigned char, signed short);
extern unsigned short v9 (signed char, signed int, unsigned short, signed char);
extern unsigned short (*v10) (signed char, signed int, unsigned short, signed char);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern void v13 (signed short, signed short, signed short, signed char);
extern void (*v14) (signed short, signed short, signed short, signed char);
extern void v15 (unsigned int, signed short, signed int, signed char);
extern void (*v16) (unsigned int, signed short, signed int, signed char);
unsigned char v21 (unsigned short, unsigned char, signed int, signed int);
unsigned char (*v22) (unsigned short, unsigned char, signed int, signed int) = v21;
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern unsigned int v27 (unsigned short, signed int, signed char);
extern unsigned int (*v28) (unsigned short, signed int, signed char);
signed int v29 (signed int, unsigned int, unsigned char, unsigned char);
signed int (*v30) (signed int, unsigned int, unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v133 = 0;
signed short v132 = 3;
signed int v131 = 3;

signed int v29 (signed int v134, unsigned int v135, unsigned char v136, unsigned char v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned short v140 = 5;
unsigned short v139 = 1;
unsigned char v138 = 0;
trace++;
switch (trace)
{
case 9: 
return -2;
case 11: 
return -4;
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
unsigned char v143 = 5;
unsigned short v142 = 6;
unsigned char v141 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (unsigned short v144, unsigned char v145, signed int v146, signed int v147)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed short v150 = -2;
unsigned char v149 = 1;
unsigned short v148 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
unsigned char v153 = 7;
signed char v152 = 2;
signed char v151 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
