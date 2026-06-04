#include <stdlib.h>
extern unsigned short v1 (signed short, signed short, unsigned int, signed int);
extern unsigned short (*v2) (signed short, signed short, unsigned int, signed int);
signed short v3 (signed int);
signed short (*v4) (signed int) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed short v7 (signed int, signed int, unsigned char, unsigned short);
extern signed short (*v8) (signed int, signed int, unsigned char, unsigned short);
extern unsigned int v11 (signed int, unsigned int);
extern unsigned int (*v12) (signed int, unsigned int);
extern signed short v13 (signed short, signed char, unsigned short);
extern signed short (*v14) (signed short, signed char, unsigned short);
extern void v15 (signed short, signed char);
extern void (*v16) (signed short, signed char);
extern unsigned int v19 (signed char, unsigned int);
extern unsigned int (*v20) (signed char, unsigned int);
unsigned short v21 (unsigned char);
unsigned short (*v22) (unsigned char) = v21;
extern signed char v23 (signed short);
extern signed char (*v24) (signed short);
unsigned int v25 (signed short, unsigned short, unsigned int);
unsigned int (*v26) (signed short, unsigned short, unsigned int) = v25;
signed char v27 (unsigned int, signed char);
signed char (*v28) (unsigned int, signed char) = v27;
extern unsigned int v29 (unsigned short, unsigned short, signed int, signed int);
extern unsigned int (*v30) (unsigned short, unsigned short, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v126 = 3;
unsigned char v125 = 6;
signed char v124 = 2;

signed char v27 (unsigned int v127, signed char v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 6;
unsigned char v130 = 4;
unsigned int v129 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (signed short v132, unsigned short v133, unsigned int v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed int v137 = -3;
signed short v136 = -3;
signed short v135 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned char v138)
{
history[history_index++] = (int)v138;
{
for (;;) {
signed char v141 = -2;
unsigned char v140 = 3;
unsigned int v139 = 7U;
trace++;
switch (trace)
{
case 5: 
return 2;
default: abort ();
}
}
}
}

signed short v3 (signed int v142)
{
history[history_index++] = (int)v142;
{
for (;;) {
signed int v145 = -4;
unsigned int v144 = 1U;
unsigned char v143 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
