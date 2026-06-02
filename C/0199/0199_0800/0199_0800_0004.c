#include <stdlib.h>
signed char v3 (unsigned int, unsigned char, signed short);
signed char (*v4) (unsigned int, unsigned char, signed short) = v3;
extern unsigned int v5 (unsigned int, signed char, signed int);
extern unsigned int (*v6) (unsigned int, signed char, signed int);
extern signed short v7 (signed int, signed short, unsigned char, unsigned char);
extern signed short (*v8) (signed int, signed short, unsigned char, unsigned char);
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
extern signed int v11 (signed short, unsigned short, signed short, unsigned char);
extern signed int (*v12) (signed short, unsigned short, signed short, unsigned char);
extern void v13 (signed char, signed int, signed char);
extern void (*v14) (signed char, signed int, signed char);
unsigned short v15 (unsigned char, signed int);
unsigned short (*v16) (unsigned char, signed int) = v15;
signed short v17 (unsigned char, unsigned short);
signed short (*v18) (unsigned char, unsigned short) = v17;
signed int v19 (void);
signed int (*v20) (void) = v19;
unsigned int v21 (signed int, unsigned short);
unsigned int (*v22) (signed int, unsigned short) = v21;
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (signed char, signed int, signed char);
extern unsigned int (*v28) (signed char, signed int, signed char);
extern signed int v29 (unsigned short, unsigned int);
extern signed int (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v117 = 1;
unsigned short v116 = 4;
unsigned char v115 = 5;

unsigned int v21 (signed int v118, unsigned short v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 0U;
unsigned char v121 = 5;
signed short v120 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
signed int v125 = -1;
unsigned int v124 = 5U;
unsigned short v123 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned char v126, unsigned short v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = -2;
unsigned short v129 = 3;
unsigned char v128 = 7;
trace++;
switch (trace)
{
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned char v131, signed int v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned char v135 = 0;
signed char v134 = -3;
unsigned char v133 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v136, unsigned char v137, signed short v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned char v141 = 3;
signed short v140 = 0;
signed char v139 = 2;
trace++;
switch (trace)
{
case 3: 
{
v25 ();
}
break;
case 5: 
return v139;
default: abort ();
}
}
}
}
