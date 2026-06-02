#include <stdlib.h>
unsigned char v1 (unsigned char, signed int, unsigned short);
unsigned char (*v2) (unsigned char, signed int, unsigned short) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern void v5 (signed short, signed short);
extern void (*v6) (signed short, signed short);
extern void v7 (signed int, unsigned char, signed char);
extern void (*v8) (signed int, unsigned char, signed char);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern unsigned char v13 (unsigned short, signed char);
extern unsigned char (*v14) (unsigned short, signed char);
signed short v15 (void);
signed short (*v16) (void) = v15;
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern signed char v19 (signed short, unsigned char, signed int);
extern signed char (*v20) (signed short, unsigned char, signed int);
extern void v23 (signed short, unsigned char, unsigned int);
extern void (*v24) (signed short, unsigned char, unsigned int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (signed short, signed char, signed char, signed int);
extern signed int (*v28) (signed short, signed char, signed char, signed int);
unsigned short v29 (signed int, signed short);
unsigned short (*v30) (signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v124 = 5;
signed int v123 = 2;
unsigned int v122 = 2U;

unsigned short v29 (signed int v125, signed short v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 3U;
signed char v128 = 1;
unsigned char v127 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
unsigned short v132 = 1;
unsigned int v131 = 2U;
signed char v130 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
signed char v135 = 2;
signed char v134 = 3;
signed short v133 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v136, signed int v137, unsigned short v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed short v141 = -2;
unsigned int v140 = 5U;
unsigned short v139 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v142;
signed char v143;
signed char v144;
signed int v145;
signed int v146;
v142 = 3 + 2;
v143 = -4 + 0;
v144 = -1 + 3;
v145 = -3 + 3;
v146 = v27 (v142, v143, v144, v145);
history[history_index++] = (int)v146;
}
break;
case 2: 
{
unsigned short v147;
unsigned short v148;
v147 = 7 + v138;
v148 = v11 (v147);
history[history_index++] = (int)v148;
}
break;
case 16: 
return v136;
default: abort ();
}
}
}
}
