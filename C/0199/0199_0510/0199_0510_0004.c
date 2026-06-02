#include <stdlib.h>
unsigned short v1 (signed short);
unsigned short (*v2) (signed short) = v1;
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
unsigned int v5 (unsigned short, unsigned char);
unsigned int (*v6) (unsigned short, unsigned char) = v5;
extern void v7 (signed int);
extern void (*v8) (signed int);
extern unsigned char v9 (unsigned int, unsigned short, signed char);
extern unsigned char (*v10) (unsigned int, unsigned short, signed char);
extern void v11 (signed short, unsigned char, unsigned int, unsigned int);
extern void (*v12) (signed short, unsigned char, unsigned int, unsigned int);
extern void v13 (unsigned char, signed char);
extern void (*v14) (unsigned char, signed char);
extern void v15 (signed int, unsigned short, unsigned short);
extern void (*v16) (signed int, unsigned short, unsigned short);
unsigned int v17 (signed char, unsigned int);
unsigned int (*v18) (signed char, unsigned int) = v17;
extern signed short v19 (signed int, unsigned char, signed char, signed int);
extern signed short (*v20) (signed int, unsigned char, signed char, signed int);
unsigned int v21 (signed short);
unsigned int (*v22) (signed short) = v21;
signed int v23 (signed int);
signed int (*v24) (signed int) = v23;
extern signed char v25 (signed short, signed short, unsigned int, signed int);
extern signed char (*v26) (signed short, signed short, unsigned int, signed int);
unsigned short v27 (signed char, signed int, signed short, unsigned char);
unsigned short (*v28) (signed char, signed int, signed short, unsigned char) = v27;
extern unsigned char v29 (signed short, signed short);
extern unsigned char (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v120 = -2;
signed short v119 = 0;
signed int v118 = 1;

unsigned short v27 (signed char v121, signed int v122, signed short v123, unsigned char v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 3;
signed int v126 = -2;
unsigned char v125 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed int v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
signed short v131 = -2;
unsigned char v130 = 7;
signed short v129 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed short v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 2U;
unsigned short v134 = 2;
signed short v133 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed char v136, unsigned int v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = 1;
signed short v139 = -1;
signed short v138 = 1;
trace++;
switch (trace)
{
case 4: 
return 2U;
case 6: 
return v137;
case 8: 
return v137;
case 10: 
return 0U;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v141, unsigned char v142)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed int v145 = -2;
signed short v144 = 3;
signed char v143 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed short v146)
{
history[history_index++] = (int)v146;
{
for (;;) {
unsigned char v149 = 1;
signed char v148 = -4;
signed int v147 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v150;
signed char v151;
v150 = 6 + 0;
v151 = v3 (v150);
history[history_index++] = (int)v151;
}
break;
case 14: 
return 5;
default: abort ();
}
}
}
}
