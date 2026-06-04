#include <stdlib.h>
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
signed int v5 (void);
signed int (*v6) (void) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
void v13 (unsigned short, unsigned int, unsigned int);
void (*v14) (unsigned short, unsigned int, unsigned int) = v13;
signed char v15 (unsigned char);
signed char (*v16) (unsigned char) = v15;
extern void v17 (void);
extern void (*v18) (void);
void v19 (unsigned char, signed char, signed char);
void (*v20) (unsigned char, signed char, signed char) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed short v23 (unsigned int);
extern signed short (*v24) (unsigned int);
signed char v27 (unsigned int, unsigned short, unsigned short, signed char);
signed char (*v28) (unsigned int, unsigned short, unsigned short, signed char) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v107 = 1;
unsigned short v106 = 5;
signed char v105 = -1;

signed char v27 (unsigned int v108, unsigned short v109, unsigned short v110, signed char v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 7;
unsigned int v113 = 2U;
unsigned short v112 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned char v115, signed char v116, signed char v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 3;
signed int v119 = -4;
signed short v118 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned char v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
unsigned int v124 = 1U;
unsigned char v123 = 6;
signed char v122 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned short v125, unsigned int v126, unsigned int v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned int v130 = 6U;
signed int v129 = -2;
signed char v128 = 2;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v131;
signed short v132;
v131 = v127 + 1U;
v132 = v23 (v131);
history[history_index++] = (int)v132;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
unsigned int v135 = 3U;
unsigned short v134 = 3;
unsigned int v133 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
