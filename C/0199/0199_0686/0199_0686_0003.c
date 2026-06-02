#include <stdlib.h>
signed char v1 (signed char, unsigned short, unsigned char);
signed char (*v2) (signed char, unsigned short, unsigned char) = v1;
extern signed char v3 (unsigned short, signed short);
extern signed char (*v4) (unsigned short, signed short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (signed int, signed char, unsigned int);
extern unsigned int (*v8) (signed int, signed char, unsigned int);
extern signed short v9 (signed char, unsigned short);
extern signed short (*v10) (signed char, unsigned short);
extern signed int v11 (unsigned short, signed short, unsigned char, signed char);
extern signed int (*v12) (unsigned short, signed short, unsigned char, signed char);
extern unsigned char v13 (signed short, unsigned short, unsigned short, signed int);
extern unsigned char (*v14) (signed short, unsigned short, unsigned short, signed int);
signed int v17 (signed int, signed char, unsigned short);
signed int (*v18) (signed int, signed char, unsigned short) = v17;
unsigned char v19 (unsigned short);
unsigned char (*v20) (unsigned short) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
unsigned int v23 (signed int, unsigned short, unsigned short);
unsigned int (*v24) (signed int, unsigned short, unsigned short) = v23;
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
extern unsigned char v27 (signed int, unsigned int, signed int, signed short);
extern unsigned char (*v28) (signed int, unsigned int, signed int, signed short);
extern signed char v29 (signed int, unsigned char, unsigned short);
extern signed char (*v30) (signed int, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v104 = 0;
unsigned char v103 = 3;
unsigned char v102 = 6;

unsigned int v23 (signed int v105, unsigned short v106, unsigned short v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed char v110 = -2;
unsigned short v109 = 2;
unsigned char v108 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned short v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 1;
unsigned char v113 = 7;
unsigned int v112 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed int v115, signed char v116, unsigned short v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = 3;
unsigned short v119 = 7;
signed char v118 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed char v121, unsigned short v122, unsigned char v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 2;
signed int v125 = 2;
unsigned int v124 = 4U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v127;
signed char v128;
v127 = v122 - 6;
v128 = v25 (v127);
history[history_index++] = (int)v128;
}
break;
case 4: 
{
signed char v129;
unsigned short v130;
signed short v131;
v129 = v121 - 0;
v130 = v122 - 0;
v131 = v9 (v129, v130);
history[history_index++] = (int)v131;
}
break;
case 12: 
return v121;
default: abort ();
}
}
}
}
