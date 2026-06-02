#include <stdlib.h>
extern void v1 (unsigned int, unsigned char, unsigned short, signed char);
extern void (*v2) (unsigned int, unsigned char, unsigned short, signed char);
extern void v3 (unsigned char, unsigned char, signed char, unsigned int);
extern void (*v4) (unsigned char, unsigned char, signed char, unsigned int);
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
void v7 (signed int, signed char, unsigned char);
void (*v8) (signed int, signed char, unsigned char) = v7;
extern signed char v9 (signed char, unsigned short);
extern signed char (*v10) (signed char, unsigned short);
extern unsigned short v11 (unsigned int, unsigned int);
extern unsigned short (*v12) (unsigned int, unsigned int);
extern signed short v13 (signed short);
extern signed short (*v14) (signed short);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern unsigned int v17 (unsigned char);
extern unsigned int (*v18) (unsigned char);
extern signed short v19 (void);
extern signed short (*v20) (void);
unsigned char v21 (signed char, signed char, signed short);
unsigned char (*v22) (signed char, signed char, signed short) = v21;
unsigned char v23 (unsigned char, unsigned char, signed char);
unsigned char (*v24) (unsigned char, unsigned char, signed char) = v23;
signed char v27 (signed int, unsigned int, signed int);
signed char (*v28) (signed int, unsigned int, signed int) = v27;
extern signed char v29 (unsigned char, unsigned char);
extern signed char (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v122 = -4;
signed int v121 = -2;
unsigned char v120 = 4;

signed char v27 (signed int v123, unsigned int v124, signed int v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = -3;
signed char v127 = -4;
unsigned short v126 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned char v129, unsigned char v130, signed char v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned short v134 = 0;
signed char v133 = 0;
unsigned char v132 = 0;
trace++;
switch (trace)
{
case 3: 
return 4;
case 5: 
return v132;
default: abort ();
}
}
}
}

unsigned char v21 (signed char v135, signed char v136, signed short v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned short v140 = 7;
signed int v139 = -2;
signed char v138 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed int v141, signed char v142, unsigned char v143)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned int v146 = 7U;
unsigned int v145 = 5U;
signed short v144 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
