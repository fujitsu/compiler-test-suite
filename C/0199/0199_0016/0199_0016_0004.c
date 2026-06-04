#include <stdlib.h>
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern signed short v5 (signed int, signed short);
extern signed short (*v6) (signed int, signed short);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern unsigned int v9 (unsigned char, unsigned short, unsigned short, signed char);
extern unsigned int (*v10) (unsigned char, unsigned short, unsigned short, signed char);
extern signed int v11 (signed int, signed short);
extern signed int (*v12) (signed int, signed short);
unsigned short v13 (signed short, signed short, signed short, unsigned short);
unsigned short (*v14) (signed short, signed short, signed short, unsigned short) = v13;
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern signed int v17 (signed short, signed short, unsigned int, signed char);
extern signed int (*v18) (signed short, signed short, unsigned int, signed char);
extern unsigned int v19 (signed char);
extern unsigned int (*v20) (signed char);
extern signed char v21 (signed char, signed int, unsigned int, unsigned char);
extern signed char (*v22) (signed char, signed int, unsigned int, unsigned char);
extern signed char v23 (signed char, unsigned char, unsigned char, unsigned short);
extern signed char (*v24) (signed char, unsigned char, unsigned char, unsigned short);
extern signed int v25 (signed char, signed char, signed char, signed int);
extern signed int (*v26) (signed char, signed char, signed char, signed int);
signed char v27 (void);
signed char (*v28) (void) = v27;
extern signed short v29 (signed short);
extern signed short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v113 = 2;
signed char v112 = -1;
unsigned char v111 = 4;

signed char v27 (void)
{
{
for (;;) {
signed char v116 = 1;
signed short v115 = -2;
unsigned int v114 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
unsigned char v119 = 2;
unsigned int v118 = 1U;
unsigned char v117 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed short v120;
signed short v121;
v120 = 3 + 3;
v121 = v29 (v120);
history[history_index++] = (int)v121;
}
break;
case 3: 
{
signed short v122;
signed short v123;
v122 = -2 - 2;
v123 = v29 (v122);
history[history_index++] = (int)v123;
}
break;
case 5: 
{
signed short v124;
signed short v125;
v124 = 3 - 2;
v125 = v29 (v124);
history[history_index++] = (int)v125;
}
break;
case 7: 
{
signed short v126;
signed short v127;
v126 = -2 - 0;
v127 = v29 (v126);
history[history_index++] = (int)v127;
}
break;
case 9: 
{
signed short v128;
signed short v129;
v128 = 0 - -3;
v129 = v29 (v128);
history[history_index++] = (int)v129;
}
break;
case 11: 
return 2U;
default: abort ();
}
}
}
}

unsigned short v13 (signed short v130, signed short v131, signed short v132, unsigned short v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned char v136 = 7;
signed int v135 = -2;
unsigned int v134 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
