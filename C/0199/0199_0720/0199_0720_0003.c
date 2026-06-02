#include <stdlib.h>
void v1 (signed short, signed char, signed int);
void (*v2) (signed short, signed char, signed int) = v1;
extern unsigned short v3 (signed int, unsigned short);
extern unsigned short (*v4) (signed int, unsigned short);
signed int v5 (signed char, unsigned char, unsigned char, signed int);
signed int (*v6) (signed char, unsigned char, unsigned char, signed int) = v5;
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern void v11 (unsigned int, unsigned int, signed int, unsigned char);
extern void (*v12) (unsigned int, unsigned int, signed int, unsigned char);
signed char v13 (void);
signed char (*v14) (void) = v13;
unsigned short v15 (unsigned int);
unsigned short (*v16) (unsigned int) = v15;
extern unsigned int v17 (signed char, signed short);
extern unsigned int (*v18) (signed char, signed short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed int v21 (signed char, unsigned char, signed int);
extern signed int (*v22) (signed char, unsigned char, signed int);
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
unsigned int v25 (signed int, signed char, signed short, unsigned int);
unsigned int (*v26) (signed int, signed char, signed short, unsigned int) = v25;
void v27 (unsigned short, signed char, unsigned char, signed short);
void (*v28) (unsigned short, signed char, unsigned char, signed short) = v27;
extern signed int v29 (unsigned int, unsigned char);
extern signed int (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v102 = 6U;
signed short v101 = 1;
signed int v100 = -2;

void v27 (unsigned short v103, signed char v104, unsigned char v105, signed short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 1U;
unsigned int v108 = 6U;
unsigned char v107 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (signed int v110, signed char v111, signed short v112, unsigned int v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned short v116 = 2;
signed char v115 = -4;
signed short v114 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 4;
unsigned char v119 = 7;
signed short v118 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
signed int v123 = 2;
signed short v122 = 0;
unsigned char v121 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed char v124, unsigned char v125, unsigned char v126, signed int v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = -2;
signed char v129 = 3;
signed char v128 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed short v131, signed char v132, signed int v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed int v136 = -1;
unsigned int v135 = 0U;
signed int v134 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed char v137;
v137 = v19 ();
history[history_index++] = (int)v137;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
