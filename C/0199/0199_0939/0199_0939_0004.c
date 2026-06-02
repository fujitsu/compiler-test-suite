#include <stdlib.h>
signed short v1 (unsigned short, signed short, signed short, unsigned int);
signed short (*v2) (unsigned short, signed short, signed short, unsigned int) = v1;
extern unsigned short v3 (unsigned int, signed char, unsigned char);
extern unsigned short (*v4) (unsigned int, signed char, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern void v11 (unsigned short, unsigned int, unsigned short);
extern void (*v12) (unsigned short, unsigned int, unsigned short);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
signed char v15 (void);
signed char (*v16) (void) = v15;
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
unsigned char v19 (signed char, unsigned short, unsigned short, signed char);
unsigned char (*v20) (signed char, unsigned short, unsigned short, signed char) = v19;
signed int v21 (signed short, signed char);
signed int (*v22) (signed short, signed char) = v21;
extern void v23 (unsigned char);
extern void (*v24) (unsigned char);
extern unsigned int v25 (unsigned char, signed char, signed int, unsigned int);
extern unsigned int (*v26) (unsigned char, signed char, signed int, unsigned int);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v103 = -3;
signed short v102 = -4;
unsigned short v101 = 1;

void v29 (void)
{
{
for (;;) {
signed int v106 = 3;
unsigned char v105 = 4;
signed int v104 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed short v107, signed char v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 2;
signed int v110 = -1;
signed short v109 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed char v112, unsigned short v113, unsigned short v114, signed char v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = 0;
unsigned short v117 = 3;
unsigned int v116 = 0U;
trace++;
switch (trace)
{
case 7: 
return 7;
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
unsigned char v121 = 0;
unsigned char v120 = 4;
signed short v119 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
unsigned short v124 = 4;
signed int v123 = -1;
unsigned int v122 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned short v125, signed short v126, signed short v127, unsigned int v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned short v131 = 5;
unsigned int v130 = 4U;
signed short v129 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v132;
v132 = v13 ();
history[history_index++] = (int)v132;
}
break;
case 4: 
{
unsigned int v133;
signed char v134;
unsigned char v135;
unsigned short v136;
v133 = v130 - v130;
v134 = 3 + -3;
v135 = 3 + 3;
v136 = v3 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 12: 
return v126;
default: abort ();
}
}
}
}
