#include <stdlib.h>
signed int v1 (signed int, signed char, unsigned int);
signed int (*v2) (signed int, signed char, unsigned int) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern void v5 (signed int, signed short, signed char);
extern void (*v6) (signed int, signed short, signed char);
extern unsigned char v7 (signed short, unsigned char, unsigned char, signed char);
extern unsigned char (*v8) (signed short, unsigned char, unsigned char, signed char);
extern void v9 (signed short, signed char, signed short, unsigned short);
extern void (*v10) (signed short, signed char, signed short, unsigned short);
extern unsigned int v11 (signed int);
extern unsigned int (*v12) (signed int);
extern signed int v13 (signed short, signed short, signed short, unsigned short);
extern signed int (*v14) (signed short, signed short, signed short, unsigned short);
extern unsigned int v15 (unsigned char, signed short);
extern unsigned int (*v16) (unsigned char, signed short);
unsigned int v17 (signed short);
unsigned int (*v18) (signed short) = v17;
signed short v19 (signed char, unsigned short, unsigned short);
signed short (*v20) (signed char, unsigned short, unsigned short) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed char v23 (signed char, unsigned short);
extern signed char (*v24) (signed char, unsigned short);
signed int v25 (signed char, unsigned char);
signed int (*v26) (signed char, unsigned char) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (unsigned short, unsigned char, unsigned char);
extern signed char (*v30) (unsigned short, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v106 = 7U;
unsigned char v105 = 4;
unsigned short v104 = 2;

signed int v25 (signed char v107, unsigned char v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 7;
unsigned short v110 = 7;
signed int v109 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed char v112, unsigned short v113, unsigned short v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = 0;
signed char v116 = -4;
unsigned short v115 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed short v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = -1;
unsigned char v120 = 3;
signed int v119 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed int v122, signed char v123, unsigned int v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 0U;
unsigned char v126 = 6;
signed short v125 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed int v128;
unsigned int v129;
v128 = -1 - -3;
v129 = v11 (v128);
history[history_index++] = (int)v129;
}
break;
case 2: 
{
signed int v130;
signed short v131;
signed char v132;
v130 = 0 + v122;
v131 = -2 + v125;
v132 = 0 - 1;
v5 (v130, v131, v132);
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
