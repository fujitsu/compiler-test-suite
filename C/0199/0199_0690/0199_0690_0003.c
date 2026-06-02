#include <stdlib.h>
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
void v9 (signed short, signed char, signed int, signed short);
void (*v10) (signed short, signed char, signed int, signed short) = v9;
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
extern signed short v13 (signed char, signed char);
extern signed short (*v14) (signed char, signed char);
extern unsigned char v15 (unsigned char, signed char, unsigned char, unsigned int);
extern unsigned char (*v16) (unsigned char, signed char, unsigned char, unsigned int);
extern signed int v19 (unsigned char);
extern signed int (*v20) (unsigned char);
extern signed int v21 (unsigned int, unsigned int, signed short, unsigned int);
extern signed int (*v22) (unsigned int, unsigned int, signed short, unsigned int);
unsigned short v23 (signed char, unsigned short, unsigned short);
unsigned short (*v24) (signed char, unsigned short, unsigned short) = v23;
extern signed int v25 (signed int, unsigned char, signed short, unsigned int);
extern signed int (*v26) (signed int, unsigned char, signed short, unsigned int);
signed short v27 (unsigned char, signed char);
signed short (*v28) (unsigned char, signed char) = v27;
extern signed char v29 (signed char, unsigned char);
extern signed char (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v125 = 3U;
signed char v124 = 2;
signed char v123 = -2;

signed short v27 (unsigned char v126, signed char v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed int v130 = -3;
signed int v129 = 1;
unsigned char v128 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (signed char v131, unsigned short v132, unsigned short v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed int v136 = 3;
signed char v135 = -4;
signed short v134 = 0;
trace++;
switch (trace)
{
case 11: 
return v133;
default: abort ();
}
}
}
}

void v9 (signed short v137, signed char v138, signed int v139, signed short v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed short v143 = -4;
unsigned int v142 = 3U;
unsigned char v141 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed short v146 = 0;
signed char v145 = 1;
unsigned char v144 = 5;
trace++;
switch (trace)
{
case 1: 
return v144;
default: abort ();
}
}
}
}
