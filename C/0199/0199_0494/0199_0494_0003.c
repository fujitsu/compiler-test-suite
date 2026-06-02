#include <stdlib.h>
unsigned char v1 (signed short, signed short, unsigned char);
unsigned char (*v2) (signed short, signed short, unsigned char) = v1;
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern signed char v5 (unsigned int, signed char, unsigned int);
extern signed char (*v6) (unsigned int, signed char, unsigned int);
signed char v7 (signed short, unsigned int, unsigned short);
signed char (*v8) (signed short, unsigned int, unsigned short) = v7;
extern void v9 (unsigned short, signed short);
extern void (*v10) (unsigned short, signed short);
extern signed char v11 (unsigned short, signed short, signed int, unsigned short);
extern signed char (*v12) (unsigned short, signed short, signed int, unsigned short);
extern unsigned short v13 (unsigned int, signed int, unsigned short, signed short);
extern unsigned short (*v14) (unsigned int, signed int, unsigned short, signed short);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern void v19 (unsigned char, unsigned int);
extern void (*v20) (unsigned char, unsigned int);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed short v23 (unsigned char, unsigned short, unsigned char);
extern signed short (*v24) (unsigned char, unsigned short, unsigned char);
extern unsigned int v25 (signed int);
extern unsigned int (*v26) (signed int);
signed char v27 (signed char, unsigned char, unsigned int, unsigned int);
signed char (*v28) (signed char, unsigned char, unsigned int, unsigned int) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v108 = 5;
unsigned char v107 = 4;
unsigned char v106 = 0;

signed char v27 (signed char v109, unsigned char v110, unsigned int v111, unsigned int v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 6;
signed int v114 = -2;
signed char v113 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
signed char v118 = 3;
unsigned char v117 = 2;
unsigned short v116 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed short v119, unsigned int v120, unsigned short v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = -1;
signed int v123 = -4;
signed char v122 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed short v125, signed short v126, unsigned char v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned short v130 = 7;
unsigned int v129 = 6U;
signed char v128 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v131;
signed short v132;
v131 = v130 + v130;
v132 = 1 - -2;
v9 (v131, v132);
}
break;
case 2: 
{
signed short v133;
v133 = v17 ();
history[history_index++] = (int)v133;
}
break;
case 14: 
return 7;
default: abort ();
}
}
}
}
