#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern unsigned short v3 (signed short, signed char, unsigned short, unsigned short);
extern unsigned short (*v4) (signed short, signed char, unsigned short, unsigned short);
extern signed char v5 (signed int, unsigned int, signed char);
extern signed char (*v6) (signed int, unsigned int, signed char);
extern unsigned short v7 (signed char, signed short, signed short);
extern unsigned short (*v8) (signed char, signed short, signed short);
signed int v9 (signed char, signed short, unsigned int, signed short);
signed int (*v10) (signed char, signed short, unsigned int, signed short) = v9;
extern unsigned char v13 (unsigned short, unsigned char, unsigned int);
extern unsigned char (*v14) (unsigned short, unsigned char, unsigned int);
unsigned char v15 (unsigned int, signed short);
unsigned char (*v16) (unsigned int, signed short) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern unsigned char v23 (unsigned char, unsigned short, unsigned char, signed int);
extern unsigned char (*v24) (unsigned char, unsigned short, unsigned char, signed int);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
extern unsigned int v27 (unsigned int, unsigned short);
extern unsigned int (*v28) (unsigned int, unsigned short);
extern signed short v29 (signed int, signed short, signed int, signed char);
extern signed short (*v30) (signed int, signed short, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v100 = -1;
unsigned short v99 = 1;
unsigned int v98 = 0U;

unsigned char v19 (void)
{
{
for (;;) {
signed char v103 = 3;
signed char v102 = 1;
signed short v101 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned int v104, signed short v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = 2;
signed short v107 = 0;
unsigned char v106 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed char v109, signed short v110, unsigned int v111, signed short v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 6U;
unsigned short v114 = 3;
signed int v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (void)
{
{
for (;;) {
unsigned int v118 = 6U;
signed char v117 = -4;
signed short v116 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v119;
unsigned short v120;
unsigned char v121;
signed int v122;
unsigned char v123;
v119 = 3 + 7;
v120 = 0 - 4;
v121 = 6 + 5;
v122 = 2 + -1;
v123 = v23 (v119, v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 2: 
{
signed int v124;
unsigned int v125;
signed char v126;
signed char v127;
v124 = -2 - 3;
v125 = v118 + v118;
v126 = v117 - 3;
v127 = v5 (v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
