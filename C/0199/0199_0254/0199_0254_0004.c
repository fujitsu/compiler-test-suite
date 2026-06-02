#include <stdlib.h>
extern unsigned int v3 (unsigned short, unsigned int);
extern unsigned int (*v4) (unsigned short, unsigned int);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern signed short v7 (signed int, unsigned char, signed short);
extern signed short (*v8) (signed int, unsigned char, signed short);
unsigned short v9 (unsigned short, unsigned short, signed short);
unsigned short (*v10) (unsigned short, unsigned short, signed short) = v9;
unsigned int v11 (unsigned int, signed char);
unsigned int (*v12) (unsigned int, signed char) = v11;
extern void v13 (signed char, signed char);
extern void (*v14) (signed char, signed char);
extern unsigned short v15 (unsigned int, unsigned char);
extern unsigned short (*v16) (unsigned int, unsigned char);
void v17 (unsigned char);
void (*v18) (unsigned char) = v17;
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
signed char v21 (unsigned int, signed short, signed char);
signed char (*v22) (unsigned int, signed short, signed char) = v21;
extern signed int v23 (signed char, signed int);
extern signed int (*v24) (signed char, signed int);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (unsigned char, unsigned int, signed short, signed char);
extern unsigned int (*v28) (unsigned char, unsigned int, signed short, signed char);
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v118 = 7;
unsigned short v117 = 4;
signed int v116 = -3;

signed char v21 (unsigned int v119, signed short v120, signed char v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = 0;
unsigned int v123 = 2U;
signed char v122 = 3;
trace++;
switch (trace)
{
case 9: 
return v121;
case 11: 
return 2;
default: abort ();
}
}
}
}

void v17 (unsigned char v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = 3;
signed short v127 = -1;
signed short v126 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v129, signed char v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed short v133 = 2;
signed char v132 = 0;
unsigned char v131 = 7;
trace++;
switch (trace)
{
case 5: 
{
signed char v134;
signed int v135;
signed int v136;
v134 = v132 + v130;
v135 = 1 + 2;
v136 = v23 (v134, v135);
history[history_index++] = (int)v136;
}
break;
case 15: 
return v129;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v137, unsigned short v138, signed short v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned int v142 = 0U;
unsigned short v141 = 3;
signed char v140 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed char v145 = -3;
signed int v144 = -3;
signed int v143 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
