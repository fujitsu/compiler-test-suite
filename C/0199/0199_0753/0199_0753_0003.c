#include <stdlib.h>
extern signed short v1 (signed int, unsigned short);
extern signed short (*v2) (signed int, unsigned short);
extern unsigned int v3 (signed short, signed int, unsigned char);
extern unsigned int (*v4) (signed short, signed int, unsigned char);
unsigned int v5 (unsigned char, signed int, unsigned int);
unsigned int (*v6) (unsigned char, signed int, unsigned int) = v5;
extern void v7 (signed short, signed short);
extern void (*v8) (signed short, signed short);
extern unsigned char v9 (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned char (*v10) (unsigned short, signed char, unsigned short, unsigned int);
extern signed char v11 (void);
extern signed char (*v12) (void);
unsigned int v13 (signed short, unsigned char, unsigned char, signed short);
unsigned int (*v14) (signed short, unsigned char, unsigned char, signed short) = v13;
signed char v15 (signed int, signed short, signed int);
signed char (*v16) (signed int, signed short, signed int) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
signed char v19 (signed int, unsigned int);
signed char (*v20) (signed int, unsigned int) = v19;
extern void v21 (unsigned int, signed short, unsigned int);
extern void (*v22) (unsigned int, signed short, unsigned int);
unsigned int v23 (signed char);
unsigned int (*v24) (signed char) = v23;
extern signed short v25 (unsigned short, signed int, unsigned short);
extern signed short (*v26) (unsigned short, signed int, unsigned short);
extern signed char v27 (signed char, signed int, signed short, unsigned short);
extern signed char (*v28) (signed char, signed int, signed short, unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v109 = 3U;
signed int v108 = -3;
unsigned short v107 = 2;

unsigned int v23 (signed char v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = 1;
signed char v112 = 1;
unsigned short v111 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed int v114, unsigned int v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 5;
signed char v117 = 3;
unsigned short v116 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed int v119, signed short v120, signed int v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = -2;
unsigned int v123 = 6U;
signed int v122 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed short v125, unsigned char v126, unsigned char v127, signed short v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = 3;
signed int v130 = 1;
unsigned int v129 = 1U;
trace++;
switch (trace)
{
case 9: 
return v129;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v132, signed int v133, unsigned int v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = -1;
signed char v136 = -1;
unsigned int v135 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
