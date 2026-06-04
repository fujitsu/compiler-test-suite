#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned char);
extern signed short (*v4) (unsigned short, unsigned char);
void v5 (unsigned short);
void (*v6) (unsigned short) = v5;
extern unsigned char v7 (unsigned short, signed char);
extern unsigned char (*v8) (unsigned short, signed char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed int v11 (signed char, signed char, unsigned int);
extern signed int (*v12) (signed char, signed char, unsigned int);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern unsigned char v15 (unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned short, unsigned int);
extern signed char v17 (signed char, signed char, unsigned int, signed char);
extern signed char (*v18) (signed char, signed char, unsigned int, signed char);
signed int v19 (signed int);
signed int (*v20) (signed int) = v19;
extern unsigned short v21 (signed int, signed int, unsigned char);
extern unsigned short (*v22) (signed int, signed int, unsigned char);
extern unsigned short v23 (unsigned short, signed int);
extern unsigned short (*v24) (unsigned short, signed int);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v110 = 4U;
signed char v109 = -1;
signed char v108 = -1;

signed char v29 (void)
{
{
for (;;) {
signed short v113 = 2;
signed short v112 = 2;
signed int v111 = 3;
trace++;
switch (trace)
{
case 6: 
return -3;
case 8: 
{
signed char v114;
signed char v115;
unsigned int v116;
signed int v117;
v114 = 3 - -4;
v115 = 1 + 2;
v116 = 0U + 0U;
v117 = v11 (v114, v115, v116);
history[history_index++] = (int)v117;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

signed int v19 (signed int v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = 1;
unsigned short v120 = 6;
signed short v119 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned short v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
unsigned char v125 = 6;
signed char v124 = -4;
signed int v123 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed int v126;
signed int v127;
unsigned char v128;
unsigned short v129;
v126 = 0 + 0;
v127 = v123 - v123;
v128 = v125 + 7;
v129 = v21 (v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 3: 
{
unsigned short v130;
unsigned int v131;
unsigned char v132;
v130 = 6 + v122;
v131 = 4U - 1U;
v132 = v15 (v130, v131);
history[history_index++] = (int)v132;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}
