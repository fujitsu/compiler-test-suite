#include <stdlib.h>
extern unsigned char v3 (signed int, unsigned int);
extern unsigned char (*v4) (signed int, unsigned int);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
unsigned int v13 (signed char, unsigned int);
unsigned int (*v14) (signed char, unsigned int) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (signed char, signed short);
extern unsigned int (*v18) (signed char, signed short);
extern unsigned int v19 (unsigned char, unsigned char, signed int);
extern unsigned int (*v20) (unsigned char, unsigned char, signed int);
extern unsigned short v21 (signed short);
extern unsigned short (*v22) (signed short);
unsigned int v23 (unsigned int, signed short, unsigned char);
unsigned int (*v24) (unsigned int, signed short, unsigned char) = v23;
unsigned char v25 (signed char, signed int, signed int, signed char);
unsigned char (*v26) (signed char, signed int, signed int, signed char) = v25;
extern unsigned char v27 (signed short, signed short, unsigned int);
extern unsigned char (*v28) (signed short, signed short, unsigned int);
unsigned char v29 (unsigned char);
unsigned char (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v115 = -1;
signed char v114 = 2;
unsigned char v113 = 0;

unsigned char v29 (unsigned char v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = 2;
unsigned short v118 = 4;
signed char v117 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (signed char v120, signed int v121, signed int v122, signed char v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 3;
unsigned int v125 = 4U;
unsigned char v124 = 2;
trace++;
switch (trace)
{
case 3: 
return 7;
case 6: 
return v124;
default: abort ();
}
}
}
}

unsigned int v23 (unsigned int v127, signed short v128, unsigned char v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed int v132 = 3;
unsigned int v131 = 7U;
signed char v130 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed char v133, unsigned int v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned char v137 = 7;
signed int v136 = 3;
signed int v135 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
unsigned short v140 = 2;
signed short v139 = 0;
signed short v138 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
