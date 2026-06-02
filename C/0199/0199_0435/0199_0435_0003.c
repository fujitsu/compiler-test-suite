#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char, unsigned char);
extern unsigned short (*v2) (unsigned short, signed char, unsigned char);
extern signed short v3 (unsigned char);
extern signed short (*v4) (unsigned char);
extern unsigned int v5 (signed char, unsigned short);
extern unsigned int (*v6) (signed char, unsigned short);
extern unsigned char v7 (unsigned short, unsigned char, unsigned short);
extern unsigned char (*v8) (unsigned short, unsigned char, unsigned short);
unsigned int v9 (signed short);
unsigned int (*v10) (signed short) = v9;
unsigned char v11 (unsigned char);
unsigned char (*v12) (unsigned char) = v11;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v19 (unsigned short, unsigned char, signed int);
extern unsigned int (*v20) (unsigned short, unsigned char, signed int);
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
signed char v23 (void);
signed char (*v24) (void) = v23;
extern unsigned char v25 (signed char, unsigned int);
extern unsigned char (*v26) (signed char, unsigned int);
unsigned char v27 (signed int, signed int, unsigned int, signed char);
unsigned char (*v28) (signed int, signed int, unsigned int, signed char) = v27;
unsigned int v29 (unsigned int, signed int, unsigned int);
unsigned int (*v30) (unsigned int, signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v117 = 0U;
unsigned int v116 = 6U;
unsigned int v115 = 1U;

unsigned int v29 (unsigned int v118, signed int v119, unsigned int v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 5;
signed char v122 = -1;
signed int v121 = -4;
trace++;
switch (trace)
{
case 7: 
return 2U;
case 9: 
return 2U;
default: abort ();
}
}
}
}

unsigned char v27 (signed int v124, signed int v125, unsigned int v126, signed char v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 4;
unsigned int v129 = 5U;
signed int v128 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (void)
{
{
for (;;) {
signed char v133 = -4;
unsigned short v132 = 7;
unsigned short v131 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned char v134)
{
history[history_index++] = (int)v134;
{
for (;;) {
unsigned short v137 = 5;
signed char v136 = -1;
unsigned char v135 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed short v138)
{
history[history_index++] = (int)v138;
{
for (;;) {
signed short v141 = -3;
unsigned short v140 = 0;
signed short v139 = -1;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v142;
unsigned char v143;
signed int v144;
unsigned int v145;
v142 = 3 + v140;
v143 = 1 - 3;
v144 = 2 - 1;
v145 = v19 (v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 11: 
return 7U;
default: abort ();
}
}
}
}
