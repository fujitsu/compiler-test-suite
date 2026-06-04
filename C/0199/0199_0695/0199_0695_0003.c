#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned short, signed int);
extern signed int (*v2) (unsigned char, unsigned short, signed int);
extern unsigned short v3 (unsigned int, signed short, signed char);
extern unsigned short (*v4) (unsigned int, signed short, signed char);
unsigned short v5 (signed int, signed int, signed short);
unsigned short (*v6) (signed int, signed int, signed short) = v5;
extern signed short v7 (signed char, unsigned char, unsigned short);
extern signed short (*v8) (signed char, unsigned char, unsigned short);
unsigned char v9 (unsigned int, unsigned int, signed short, unsigned short);
unsigned char (*v10) (unsigned int, unsigned int, signed short, unsigned short) = v9;
signed short v11 (signed short, unsigned short, signed char, unsigned int);
signed short (*v12) (signed short, unsigned short, signed char, unsigned int) = v11;
extern void v13 (signed int);
extern void (*v14) (signed int);
extern signed char v15 (unsigned char, signed short);
extern signed char (*v16) (unsigned char, signed short);
extern signed int v17 (signed char, unsigned int, unsigned int);
extern signed int (*v18) (signed char, unsigned int, unsigned int);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
unsigned short v21 (signed short, unsigned char, unsigned char, signed short);
unsigned short (*v22) (signed short, unsigned char, unsigned char, signed short) = v21;
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
unsigned char v25 (signed short, unsigned char, unsigned short, signed int);
unsigned char (*v26) (signed short, unsigned char, unsigned short, signed int) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v112 = 2;
unsigned char v111 = 4;
signed short v110 = 1;

unsigned char v25 (signed short v113, unsigned char v114, unsigned short v115, signed int v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = 3;
signed int v118 = 0;
signed char v117 = 1;
trace++;
switch (trace)
{
case 2: 
return v114;
case 4: 
return 5;
case 6: 
return 4;
default: abort ();
}
}
}
}

unsigned short v21 (signed short v120, unsigned char v121, unsigned char v122, signed short v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed char v126 = 2;
unsigned char v125 = 3;
signed int v124 = 2;
trace++;
switch (trace)
{
case 8: 
{
signed int v127;
v127 = v29 ();
history[history_index++] = (int)v127;
}
break;
case 10: 
{
signed char v128;
signed char v129;
v128 = -4 + v126;
v129 = v23 (v128);
history[history_index++] = (int)v129;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

signed short v11 (signed short v130, unsigned short v131, signed char v132, unsigned int v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 2;
unsigned char v135 = 5;
signed short v134 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v137, unsigned int v138, signed short v139, unsigned short v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned int v143 = 7U;
unsigned char v142 = 1;
signed int v141 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed int v144, signed int v145, signed short v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed int v149 = -3;
signed int v148 = 0;
unsigned char v147 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
