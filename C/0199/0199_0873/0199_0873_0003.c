#include <stdlib.h>
signed int v1 (signed short, signed short);
signed int (*v2) (signed short, signed short) = v1;
unsigned char v3 (signed short, unsigned char, unsigned int);
unsigned char (*v4) (signed short, unsigned char, unsigned int) = v3;
extern signed int v5 (unsigned char, signed char);
extern signed int (*v6) (unsigned char, signed char);
extern signed char v7 (unsigned char, signed short, signed char, signed short);
extern signed char (*v8) (unsigned char, signed short, signed char, signed short);
extern unsigned short v9 (signed int, signed char, unsigned int, signed short);
extern unsigned short (*v10) (signed int, signed char, unsigned int, signed short);
extern unsigned int v11 (unsigned short, signed short, signed short);
extern unsigned int (*v12) (unsigned short, signed short, signed short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v15 (unsigned int, signed int, signed char);
extern unsigned int (*v16) (unsigned int, signed int, signed char);
extern signed char v17 (unsigned short, signed int);
extern signed char (*v18) (unsigned short, signed int);
extern unsigned int v19 (unsigned int);
extern unsigned int (*v20) (unsigned int);
extern signed int v21 (unsigned char, unsigned char, signed int);
extern signed int (*v22) (unsigned char, unsigned char, signed int);
signed short v23 (signed short, unsigned char, signed char, unsigned short);
signed short (*v24) (signed short, unsigned char, signed char, unsigned short) = v23;
extern signed char v25 (unsigned short, signed short, signed int);
extern signed char (*v26) (unsigned short, signed short, signed int);
extern unsigned short v27 (signed short);
extern unsigned short (*v28) (signed short);
extern unsigned char v29 (signed int, signed short, signed short);
extern unsigned char (*v30) (signed int, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v111 = 0U;
unsigned char v110 = 1;
signed char v109 = 2;

signed short v23 (signed short v112, unsigned char v113, signed char v114, unsigned short v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 4;
signed short v117 = -1;
signed char v116 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed short v119, unsigned char v120, unsigned int v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 6;
signed int v123 = -3;
signed short v122 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed short v125, signed short v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 6;
unsigned int v128 = 6U;
unsigned char v127 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v130;
v130 = v13 ();
history[history_index++] = (int)v130;
}
break;
case 6: 
{
unsigned char v131;
signed char v132;
signed int v133;
v131 = 1 - v127;
v132 = -2 - 1;
v133 = v5 (v131, v132);
history[history_index++] = (int)v133;
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}
