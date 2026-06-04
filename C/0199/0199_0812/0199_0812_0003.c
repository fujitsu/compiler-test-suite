#include <stdlib.h>
signed char v3 (void);
signed char (*v4) (void) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
signed char v7 (unsigned int, signed char);
signed char (*v8) (unsigned int, signed char) = v7;
signed short v9 (unsigned short, signed int, unsigned int);
signed short (*v10) (unsigned short, signed int, unsigned int) = v9;
extern unsigned int v11 (unsigned char, signed char, unsigned int, unsigned short);
extern unsigned int (*v12) (unsigned char, signed char, unsigned int, unsigned short);
extern void v13 (unsigned char, unsigned int, unsigned int, unsigned int);
extern void (*v14) (unsigned char, unsigned int, unsigned int, unsigned int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v17 (signed char);
extern unsigned int (*v18) (signed char);
extern unsigned short v19 (signed char);
extern unsigned short (*v20) (signed char);
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern unsigned char v23 (unsigned int, signed char, signed short, unsigned short);
extern unsigned char (*v24) (unsigned int, signed char, signed short, unsigned short);
extern unsigned short v25 (unsigned int, signed short, unsigned char);
extern unsigned short (*v26) (unsigned int, signed short, unsigned char);
extern signed char v27 (unsigned short);
extern signed char (*v28) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v111 = -2;
unsigned short v110 = 2;
unsigned char v109 = 1;

signed short v9 (unsigned short v112, signed int v113, unsigned int v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = -4;
unsigned short v116 = 5;
unsigned int v115 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned int v118, signed char v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = -1;
signed char v121 = -3;
unsigned short v120 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned int v125 = 6U;
unsigned int v124 = 1U;
signed char v123 = -4;
trace++;
switch (trace)
{
case 1: 
{
signed char v126;
signed char v127;
v126 = v123 - v123;
v127 = v21 (v126);
history[history_index++] = (int)v127;
}
break;
case 3: 
{
unsigned int v128;
signed char v129;
signed short v130;
unsigned short v131;
unsigned char v132;
v128 = v125 - v124;
v129 = v123 - v123;
v130 = -4 + -4;
v131 = 3 + 2;
v132 = v23 (v128, v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 15: 
return 3;
default: abort ();
}
}
}
}
