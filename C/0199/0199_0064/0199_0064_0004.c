#include <stdlib.h>
void v1 (unsigned int, unsigned char, unsigned char, signed char);
void (*v2) (unsigned int, unsigned char, unsigned char, signed char) = v1;
extern signed int v3 (unsigned short, unsigned char, unsigned short, unsigned int);
extern signed int (*v4) (unsigned short, unsigned char, unsigned short, unsigned int);
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern signed int v7 (signed int, unsigned int, signed int);
extern signed int (*v8) (signed int, unsigned int, signed int);
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern unsigned char v13 (signed char);
extern unsigned char (*v14) (signed char);
extern unsigned short v15 (unsigned int, unsigned char, signed int, signed char);
extern unsigned short (*v16) (unsigned int, unsigned char, signed int, signed char);
unsigned char v17 (unsigned int);
unsigned char (*v18) (unsigned int) = v17;
static unsigned short v19 (signed short, unsigned int);
static unsigned short (*v20) (signed short, unsigned int) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
signed int v23 (unsigned short);
signed int (*v24) (unsigned short) = v23;
extern unsigned int v25 (unsigned int, unsigned int, unsigned int, signed int);
extern unsigned int (*v26) (unsigned int, unsigned int, unsigned int, signed int);
extern signed char v27 (unsigned int);
extern signed char (*v28) (unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v116 = 3;
unsigned short v115 = 1;
signed int v114 = 2;

signed int v23 (unsigned short v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed int v120 = 3;
unsigned char v119 = 3;
unsigned short v118 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v19 (signed short v121, unsigned int v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed char v125 = 2;
unsigned int v124 = 6U;
unsigned int v123 = 1U;
trace++;
switch (trace)
{
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned char v17 (unsigned int v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
signed char v129 = -2;
unsigned int v128 = 5U;
signed char v127 = 3;
trace++;
switch (trace)
{
case 2: 
return 1;
case 4: 
{
signed short v130;
v130 = v21 ();
history[history_index++] = (int)v130;
}
break;
case 10: 
{
signed short v131;
unsigned int v132;
unsigned short v133;
v131 = -2 + 2;
v132 = v128 - 6U;
v133 = v19 (v131, v132);
history[history_index++] = (int)v133;
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
signed int v136 = 3;
signed short v135 = 1;
unsigned short v134 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned int v137, unsigned char v138, unsigned char v139, signed char v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned char v143 = 7;
unsigned int v142 = 5U;
unsigned char v141 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v144;
unsigned char v145;
v144 = v140 + v140;
v145 = v13 (v144);
history[history_index++] = (int)v145;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
