#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned char);
extern signed int (*v2) (unsigned char, unsigned char);
extern signed char v3 (signed short, signed char);
extern signed char (*v4) (signed short, signed char);
extern signed short v5 (signed int, unsigned short, unsigned int);
extern signed short (*v6) (signed int, unsigned short, unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed char v9 (unsigned char, signed int);
extern signed char (*v10) (unsigned char, signed int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
void v15 (signed int);
void (*v16) (signed int) = v15;
extern void v17 (unsigned char, signed char, unsigned short, signed int);
extern void (*v18) (unsigned char, signed char, unsigned short, signed int);
extern void v19 (unsigned int, signed int);
extern void (*v20) (unsigned int, signed int);
unsigned short v23 (unsigned int, signed char, signed short);
unsigned short (*v24) (unsigned int, signed char, signed short) = v23;
signed short v25 (unsigned int, unsigned int, signed char, unsigned short);
signed short (*v26) (unsigned int, unsigned int, signed char, unsigned short) = v25;
extern unsigned short v27 (unsigned char, signed int, unsigned int, signed int);
extern unsigned short (*v28) (unsigned char, signed int, unsigned int, signed int);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v120 = 0;
unsigned char v119 = 7;
unsigned int v118 = 2U;

unsigned short v29 (void)
{
{
for (;;) {
unsigned short v123 = 7;
signed short v122 = 1;
signed char v121 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (unsigned int v124, unsigned int v125, signed char v126, unsigned short v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 7;
unsigned short v129 = 0;
unsigned short v128 = 4;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v131;
signed int v132;
unsigned int v133;
signed int v134;
unsigned short v135;
v131 = 6 + 5;
v132 = -3 - -2;
v133 = 3U + 1U;
v134 = -3 - -2;
v135 = v27 (v131, v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}

unsigned short v23 (unsigned int v136, signed char v137, signed short v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed short v141 = 2;
signed int v140 = -4;
unsigned int v139 = 4U;
trace++;
switch (trace)
{
case 3: 
return 6;
case 5: 
return 4;
default: abort ();
}
}
}
}

void v15 (signed int v142)
{
history[history_index++] = (int)v142;
{
for (;;) {
unsigned int v145 = 0U;
unsigned short v144 = 6;
signed int v143 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
