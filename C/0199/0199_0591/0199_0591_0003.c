#include <stdlib.h>
extern signed short v1 (unsigned int, unsigned short, unsigned int);
extern signed short (*v2) (unsigned int, unsigned short, unsigned int);
extern signed short v5 (unsigned char, signed char, signed short);
extern signed short (*v6) (unsigned char, signed char, signed short);
extern unsigned int v7 (unsigned int);
extern unsigned int (*v8) (unsigned int);
unsigned int v9 (signed char, signed char);
unsigned int (*v10) (signed char, signed char) = v9;
unsigned short v11 (signed char, unsigned short);
unsigned short (*v12) (signed char, unsigned short) = v11;
extern void v13 (unsigned short, unsigned short);
extern void (*v14) (unsigned short, unsigned short);
extern signed int v15 (unsigned short, signed char, signed short, signed char);
extern signed int (*v16) (unsigned short, signed char, signed short, signed char);
extern signed short v17 (unsigned short, signed char);
extern signed short (*v18) (unsigned short, signed char);
unsigned char v19 (unsigned short, signed int, unsigned short);
unsigned char (*v20) (unsigned short, signed int, unsigned short) = v19;
extern unsigned int v21 (signed char, unsigned short, unsigned int, signed short);
extern unsigned int (*v22) (signed char, unsigned short, unsigned int, signed short);
extern signed int v23 (unsigned char, signed short, unsigned char);
extern signed int (*v24) (unsigned char, signed short, unsigned char);
extern signed char v27 (signed char);
extern signed char (*v28) (signed char);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v115 = 5U;
unsigned char v114 = 2;
signed char v113 = 1;

unsigned char v19 (unsigned short v116, signed int v117, unsigned short v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned int v121 = 6U;
signed short v120 = -1;
signed short v119 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed char v122, unsigned short v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned int v126 = 5U;
unsigned short v125 = 0;
unsigned char v124 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v127;
signed short v128;
unsigned char v129;
signed int v130;
v127 = 0 + 6;
v128 = 3 - 2;
v129 = v124 - v124;
v130 = v23 (v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 15: 
return v125;
default: abort ();
}
}
}
}

unsigned int v9 (signed char v131, signed char v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = -1;
signed char v134 = 1;
unsigned short v133 = 0;
trace++;
switch (trace)
{
case 8: 
return 5U;
case 10: 
return 7U;
default: abort ();
}
}
}
}
