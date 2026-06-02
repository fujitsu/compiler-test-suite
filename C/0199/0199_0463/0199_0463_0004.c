#include <stdlib.h>
extern signed char v1 (signed char, signed char, unsigned int, unsigned char);
extern signed char (*v2) (signed char, signed char, unsigned int, unsigned char);
signed char v3 (unsigned char, signed short);
signed char (*v4) (unsigned char, signed short) = v3;
signed short v5 (signed char);
signed short (*v6) (signed char) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v11 (unsigned short, unsigned short, signed short);
extern void (*v12) (unsigned short, unsigned short, signed short);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
unsigned int v17 (unsigned char, signed char);
unsigned int (*v18) (unsigned char, signed char) = v17;
extern signed char v19 (unsigned int);
extern signed char (*v20) (unsigned int);
unsigned short v21 (unsigned short);
unsigned short (*v22) (unsigned short) = v21;
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
signed char v25 (unsigned int);
signed char (*v26) (unsigned int) = v25;
extern signed char v27 (signed int, unsigned int);
extern signed char (*v28) (signed int, unsigned int);
signed short v29 (unsigned char, signed char, signed int);
signed short (*v30) (unsigned char, signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v113 = 7;
signed char v112 = 2;
unsigned int v111 = 1U;

signed short v29 (unsigned char v114, signed char v115, signed int v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = 3;
signed char v118 = -2;
signed char v117 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (unsigned int v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = 1;
unsigned short v122 = 7;
signed short v121 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned short v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = -1;
signed int v126 = 1;
unsigned char v125 = 0;
trace++;
switch (trace)
{
case 2: 
return 7;
case 5: 
return 4;
case 10: 
{
signed int v128;
unsigned int v129;
signed char v130;
v128 = v126 + v126;
v129 = 4U + 3U;
v130 = v27 (v128, v129);
history[history_index++] = (int)v130;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned char v131, signed char v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = -1;
unsigned int v134 = 6U;
signed short v133 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed char v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
signed short v139 = 3;
unsigned int v138 = 0U;
unsigned char v137 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned char v140, signed short v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed short v144 = 3;
unsigned int v143 = 5U;
signed char v142 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
