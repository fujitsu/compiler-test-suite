#include <stdlib.h>
extern signed short v1 (signed char, signed short, unsigned char, unsigned char);
extern signed short (*v2) (signed char, signed short, unsigned char, unsigned char);
extern void v3 (signed int, signed int, signed short);
extern void (*v4) (signed int, signed int, signed short);
extern signed short v5 (unsigned short, signed int);
extern signed short (*v6) (unsigned short, signed int);
extern signed int v7 (signed char);
extern signed int (*v8) (signed char);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
unsigned int v11 (unsigned int);
unsigned int (*v12) (unsigned int) = v11;
void v13 (unsigned char, unsigned int, signed char);
void (*v14) (unsigned char, unsigned int, signed char) = v13;
extern unsigned short v17 (signed int, signed char, signed int);
extern unsigned short (*v18) (signed int, signed char, signed int);
extern void v19 (void);
extern void (*v20) (void);
unsigned char v21 (signed short, signed int);
unsigned char (*v22) (signed short, signed int) = v21;
extern signed int v23 (unsigned short, signed char, unsigned char);
extern signed int (*v24) (unsigned short, signed char, unsigned char);
extern void v25 (signed int, signed char, signed char, signed char);
extern void (*v26) (signed int, signed char, signed char, signed char);
extern signed char v27 (unsigned int);
extern signed char (*v28) (unsigned int);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v125 = -2;
unsigned short v124 = 1;
unsigned int v123 = 3U;

unsigned char v21 (signed short v126, signed int v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 1;
signed int v129 = 0;
unsigned int v128 = 5U;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}

void v13 (unsigned char v131, unsigned int v132, signed char v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed short v136 = 3;
unsigned char v135 = 3;
signed char v134 = 3;
trace++;
switch (trace)
{
case 7: 
{
signed int v137;
signed char v138;
signed char v139;
signed char v140;
v137 = 3 - 3;
v138 = 2 + v134;
v139 = 0 + v133;
v140 = 0 + v133;
v25 (v137, v138, v139, v140);
}
break;
case 9: 
return;
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v141)
{
history[history_index++] = (int)v141;
{
for (;;) {
signed short v144 = -3;
signed char v143 = -1;
unsigned int v142 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
unsigned int v147 = 7U;
signed int v146 = -4;
unsigned short v145 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
