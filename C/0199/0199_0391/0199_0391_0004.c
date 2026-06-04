#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char, signed int);
extern unsigned char (*v2) (unsigned short, unsigned char, signed int);
unsigned int v3 (signed short, signed int, unsigned char);
unsigned int (*v4) (signed short, signed int, unsigned char) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
signed int v11 (signed char, unsigned int);
signed int (*v12) (signed char, unsigned int) = v11;
signed short v13 (signed short, signed char, unsigned char);
signed short (*v14) (signed short, signed char, unsigned char) = v13;
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern unsigned int v17 (signed char, unsigned char, signed short, signed int);
extern unsigned int (*v18) (signed char, unsigned char, signed short, signed int);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
void v23 (signed int);
void (*v24) (signed int) = v23;
extern signed char v25 (signed int, signed char, signed short, unsigned short);
extern signed char (*v26) (signed int, signed char, signed short, unsigned short);
extern unsigned short v27 (unsigned char, signed short);
extern unsigned short (*v28) (unsigned char, signed short);
extern unsigned short v29 (signed char, signed short, unsigned char, unsigned short);
extern unsigned short (*v30) (signed char, signed short, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v122 = 4;
signed char v121 = -2;
signed int v120 = 3;

void v23 (signed int v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned int v126 = 3U;
unsigned int v125 = 4U;
signed char v124 = 2;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v127;
signed short v128;
unsigned short v129;
v127 = 4 + 1;
v128 = 3 + -2;
v129 = v27 (v127, v128);
history[history_index++] = (int)v129;
}
break;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

signed short v13 (signed short v130, signed char v131, unsigned char v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = 0;
unsigned short v134 = 1;
signed int v133 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed char v136, unsigned int v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed int v140 = 0;
signed short v139 = -3;
unsigned int v138 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed short v141, signed int v142, unsigned char v143)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned short v146 = 3;
unsigned short v145 = 6;
signed short v144 = 3;
trace++;
switch (trace)
{
case 3: 
return 4U;
default: abort ();
}
}
}
}
