#include <stdlib.h>
signed char v1 (unsigned int);
signed char (*v2) (unsigned int) = v1;
extern unsigned int v3 (signed int, unsigned char, signed short);
extern unsigned int (*v4) (signed int, unsigned char, signed short);
extern void v5 (unsigned int, signed char, unsigned short);
extern void (*v6) (unsigned int, signed char, unsigned short);
extern unsigned int v7 (unsigned char, unsigned int, unsigned char, unsigned char);
extern unsigned int (*v8) (unsigned char, unsigned int, unsigned char, unsigned char);
extern signed int v9 (signed int, signed short, unsigned int, unsigned int);
extern signed int (*v10) (signed int, signed short, unsigned int, unsigned int);
void v11 (signed char);
void (*v12) (signed char) = v11;
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
void v15 (unsigned char);
void (*v16) (unsigned char) = v15;
extern signed int v17 (signed int, unsigned short, signed char, signed short);
extern signed int (*v18) (signed int, unsigned short, signed char, signed short);
extern signed int v19 (unsigned short, unsigned short);
extern signed int (*v20) (unsigned short, unsigned short);
extern signed short v21 (signed char, signed short, signed short, unsigned char);
extern signed short (*v22) (signed char, signed short, signed short, unsigned char);
signed int v23 (signed short, unsigned int, unsigned short);
signed int (*v24) (signed short, unsigned int, unsigned short) = v23;
extern void v25 (signed char);
extern void (*v26) (signed char);
extern signed int v27 (signed char, unsigned int, unsigned int, signed int);
extern signed int (*v28) (signed char, unsigned int, unsigned int, signed int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v116 = 7;
unsigned char v115 = 4;
unsigned short v114 = 1;

signed int v23 (signed short v117, unsigned int v118, unsigned short v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 3U;
signed int v121 = -4;
signed short v120 = 1;
trace++;
switch (trace)
{
case 4: 
{
signed char v123;
unsigned int v124;
unsigned int v125;
signed int v126;
signed int v127;
v123 = 3 + 2;
v124 = v122 + v122;
v125 = v122 + v122;
v126 = 3 - -3;
v127 = v27 (v123, v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 6: 
return v121;
default: abort ();
}
}
}
}

void v15 (unsigned char v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
unsigned short v131 = 6;
unsigned short v130 = 4;
signed short v129 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed char v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = 3;
unsigned char v134 = 0;
unsigned char v133 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned int v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
signed int v139 = 3;
signed short v138 = -2;
signed short v137 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed char v140;
v140 = 2 + 0;
v25 (v140);
}
break;
case 2: 
{
signed int v141;
unsigned short v142;
signed char v143;
signed short v144;
signed int v145;
v141 = v139 + 1;
v142 = 2 + 0;
v143 = -1 + -4;
v144 = v138 - v137;
v145 = v17 (v141, v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
