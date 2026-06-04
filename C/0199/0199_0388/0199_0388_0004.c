#include <stdlib.h>
extern void v1 (unsigned char);
extern void (*v2) (unsigned char);
extern signed char v3 (void);
extern signed char (*v4) (void);
signed int v5 (unsigned char, signed short, unsigned short);
signed int (*v6) (unsigned char, signed short, unsigned short) = v5;
unsigned short v7 (signed short, unsigned char, signed int);
unsigned short (*v8) (signed short, unsigned char, signed int) = v7;
unsigned int v9 (signed char, unsigned char);
unsigned int (*v10) (signed char, unsigned char) = v9;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern signed short v19 (signed short, unsigned char, unsigned short, signed short);
extern signed short (*v20) (signed short, unsigned char, unsigned short, signed short);
extern void v21 (signed short, unsigned int);
extern void (*v22) (signed short, unsigned int);
extern unsigned short v23 (unsigned short, unsigned short, signed short, signed short);
extern unsigned short (*v24) (unsigned short, unsigned short, signed short, signed short);
extern signed int v25 (signed short);
extern signed int (*v26) (signed short);
unsigned short v27 (signed short, unsigned int, unsigned short);
unsigned short (*v28) (signed short, unsigned int, unsigned short) = v27;
extern signed short v29 (unsigned char, signed char, unsigned int);
extern signed short (*v30) (unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v116 = 2;
signed short v115 = 0;
unsigned int v114 = 4U;

unsigned short v27 (signed short v117, unsigned int v118, unsigned short v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 7;
signed short v121 = 0;
unsigned short v120 = 1;
trace++;
switch (trace)
{
case 8: 
return 6;
case 10: 
return v122;
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned short v125 = 1;
unsigned int v124 = 4U;
unsigned int v123 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed char v126, unsigned char v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = -1;
signed int v129 = 3;
unsigned int v128 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v131, unsigned char v132, signed int v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 4;
signed short v135 = -4;
unsigned short v134 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned char v137, signed short v138, unsigned short v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned char v142 = 0;
signed char v141 = 3;
signed char v140 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
