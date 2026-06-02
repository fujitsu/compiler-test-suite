#include <stdlib.h>
extern unsigned short v1 (signed int, signed char, unsigned short, signed short);
extern unsigned short (*v2) (signed int, signed char, unsigned short, signed short);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (unsigned short, signed short);
extern signed int (*v6) (unsigned short, signed short);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
unsigned int v9 (unsigned short, signed short);
unsigned int (*v10) (unsigned short, signed short) = v9;
extern unsigned char v11 (unsigned int, unsigned int, unsigned short, signed int);
extern unsigned char (*v12) (unsigned int, unsigned int, unsigned short, signed int);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern signed char v15 (unsigned int, signed int, unsigned int, signed int);
extern signed char (*v16) (unsigned int, signed int, unsigned int, signed int);
extern unsigned char v17 (unsigned short, unsigned short, unsigned int, unsigned char);
extern unsigned char (*v18) (unsigned short, unsigned short, unsigned int, unsigned char);
extern void v19 (unsigned int, signed short, unsigned int);
extern void (*v20) (unsigned int, signed short, unsigned int);
unsigned int v21 (unsigned short, signed short, signed char);
unsigned int (*v22) (unsigned short, signed short, signed char) = v21;
signed short v23 (unsigned short, signed short, signed short, unsigned char);
signed short (*v24) (unsigned short, signed short, signed short, unsigned char) = v23;
extern void v25 (signed int, unsigned short, unsigned int);
extern void (*v26) (signed int, unsigned short, unsigned int);
extern unsigned int v27 (signed short, unsigned short, unsigned short);
extern unsigned int (*v28) (signed short, unsigned short, unsigned short);
extern unsigned short v29 (signed char, signed short, signed char, unsigned short);
extern unsigned short (*v30) (signed char, signed short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v105 = 1;
unsigned int v104 = 3U;
signed int v103 = -3;

signed short v23 (unsigned short v106, signed short v107, signed short v108, unsigned char v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 3;
unsigned char v111 = 1;
unsigned int v110 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (unsigned short v113, signed short v114, signed char v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed char v118 = 3;
signed int v117 = 0;
unsigned int v116 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned short v119, signed short v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = -2;
signed short v122 = -3;
signed char v121 = -1;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v124;
unsigned int v125;
unsigned short v126;
signed int v127;
unsigned char v128;
v124 = 5U - 2U;
v125 = 1U - 7U;
v126 = 4 - v119;
v127 = 1 - -3;
v128 = v11 (v124, v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 8: 
{
unsigned int v129;
unsigned int v130;
unsigned short v131;
signed int v132;
unsigned char v133;
v129 = 0U + 5U;
v130 = 7U + 3U;
v131 = 3 - v119;
v132 = 2 - 1;
v133 = v11 (v129, v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 12: 
return 6U;
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
signed short v136 = -1;
signed int v135 = -4;
signed int v134 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
