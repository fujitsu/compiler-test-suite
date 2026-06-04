#include <stdlib.h>
extern void v1 (signed char);
extern void (*v2) (signed char);
extern void v3 (unsigned char, unsigned short, signed int);
extern void (*v4) (unsigned char, unsigned short, signed int);
extern unsigned int v5 (signed int, signed int, signed short, unsigned int);
extern unsigned int (*v6) (signed int, signed int, signed short, unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed short v9 (unsigned int, signed char);
extern signed short (*v10) (unsigned int, signed char);
signed short v11 (unsigned int);
signed short (*v12) (unsigned int) = v11;
signed short v15 (unsigned char);
signed short (*v16) (unsigned char) = v15;
extern void v17 (signed short, unsigned int, unsigned int, signed short);
extern void (*v18) (signed short, unsigned int, unsigned int, signed short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed short v23 (unsigned char, unsigned char, signed char);
extern signed short (*v24) (unsigned char, unsigned char, signed char);
signed int v25 (void);
signed int (*v26) (void) = v25;
signed int v27 (signed char);
signed int (*v28) (signed char) = v27;
signed char v29 (signed short, signed char, unsigned int, signed char);
signed char (*v30) (signed short, signed char, unsigned int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v120 = 3;
signed short v119 = 2;
signed short v118 = -3;

signed char v29 (signed short v121, signed char v122, unsigned int v123, signed char v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 4;
unsigned int v126 = 2U;
signed char v125 = 2;
trace++;
switch (trace)
{
case 5: 
return v125;
default: abort ();
}
}
}
}

signed int v27 (signed char v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = 0;
unsigned char v130 = 5;
signed int v129 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
unsigned int v134 = 2U;
signed short v133 = -2;
signed short v132 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned char v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
signed short v138 = 0;
signed char v137 = 0;
signed int v136 = 1;
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

signed short v11 (unsigned int v139)
{
history[history_index++] = (int)v139;
{
for (;;) {
signed int v142 = 3;
unsigned short v141 = 4;
signed char v140 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
