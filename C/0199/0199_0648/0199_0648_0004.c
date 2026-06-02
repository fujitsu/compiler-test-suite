#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned int v3 (signed short, unsigned short);
extern unsigned int (*v4) (signed short, unsigned short);
extern signed short v5 (signed short, signed short, signed int, unsigned short);
extern signed short (*v6) (signed short, signed short, signed int, unsigned short);
extern signed char v7 (void);
extern signed char (*v8) (void);
signed short v9 (signed int, signed short, signed short);
signed short (*v10) (signed int, signed short, signed short) = v9;
signed short v11 (signed short, signed short);
signed short (*v12) (signed short, signed short) = v11;
extern unsigned short v13 (unsigned int, signed short);
extern unsigned short (*v14) (unsigned int, signed short);
extern signed short v15 (unsigned char, signed int, unsigned short);
extern signed short (*v16) (unsigned char, signed int, unsigned short);
extern void v17 (unsigned int, unsigned int);
extern void (*v18) (unsigned int, unsigned int);
signed char v19 (signed int, signed int, unsigned int);
signed char (*v20) (signed int, signed int, unsigned int) = v19;
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern void v25 (unsigned int, signed int);
extern void (*v26) (unsigned int, signed int);
extern unsigned int v27 (signed short, signed int, signed short, signed short);
extern unsigned int (*v28) (signed short, signed int, signed short, signed short);
unsigned int v29 (signed char, unsigned char, unsigned short);
unsigned int (*v30) (signed char, unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v117 = -2;
signed int v116 = 2;
unsigned short v115 = 0;

unsigned int v29 (signed char v118, unsigned char v119, unsigned short v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned int v123 = 2U;
signed char v122 = 0;
signed short v121 = 1;
trace++;
switch (trace)
{
case 5: 
return 6U;
case 7: 
return v123;
case 11: 
return 5U;
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
signed char v126 = -3;
unsigned short v125 = 5;
unsigned char v124 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed int v127, signed int v128, unsigned int v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 2;
unsigned short v131 = 2;
unsigned short v130 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed short v133, signed short v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned int v137 = 4U;
unsigned char v136 = 7;
unsigned int v135 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed int v138, signed short v139, signed short v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed short v143 = 1;
unsigned char v142 = 3;
unsigned int v141 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
