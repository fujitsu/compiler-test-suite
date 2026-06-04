#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned short, signed short, signed int);
extern unsigned short (*v2) (signed short, unsigned short, signed short, signed int);
unsigned char v3 (unsigned short);
unsigned char (*v4) (unsigned short) = v3;
extern unsigned short v5 (unsigned short, signed char, unsigned char, unsigned int);
extern unsigned short (*v6) (unsigned short, signed char, unsigned char, unsigned int);
void v7 (void);
void (*v8) (void) = v7;
extern unsigned short v9 (unsigned char, signed int);
extern unsigned short (*v10) (unsigned char, signed int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
signed char v15 (unsigned short, unsigned char, unsigned char, unsigned short);
signed char (*v16) (unsigned short, unsigned char, unsigned char, unsigned short) = v15;
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern signed char v19 (signed short, unsigned int, unsigned char, unsigned int);
extern signed char (*v20) (signed short, unsigned int, unsigned char, unsigned int);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern signed short v23 (signed short, unsigned char, unsigned short, signed int);
extern signed short (*v24) (signed short, unsigned char, unsigned short, signed int);
extern signed char v25 (signed int, signed short, unsigned char, unsigned char);
extern signed char (*v26) (signed int, signed short, unsigned char, unsigned char);
signed char v27 (unsigned short, unsigned char, unsigned short, signed int);
signed char (*v28) (unsigned short, unsigned char, unsigned short, signed int) = v27;
extern void v29 (unsigned char, signed char);
extern void (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v104 = 2U;
signed int v103 = 2;
unsigned short v102 = 1;

signed char v27 (unsigned short v105, unsigned char v106, unsigned short v107, signed int v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 6;
signed char v110 = 3;
unsigned short v109 = 2;
trace++;
switch (trace)
{
case 9: 
return 0;
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
signed int v114 = -2;
signed short v113 = -3;
unsigned int v112 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned short v115, unsigned char v116, unsigned char v117, unsigned short v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = -1;
unsigned short v120 = 6;
signed int v119 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
unsigned char v124 = 7;
signed char v123 = -2;
unsigned char v122 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned short v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
unsigned int v128 = 3U;
signed char v127 = -2;
signed int v126 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v129;
unsigned char v130;
v129 = v125 + 1;
v130 = v17 (v129);
history[history_index++] = (int)v130;
}
break;
case 5: 
{
unsigned short v131;
unsigned char v132;
v131 = 3 + 2;
v132 = v17 (v131);
history[history_index++] = (int)v132;
}
break;
case 7: 
{
unsigned short v133;
unsigned char v134;
v133 = v125 + 7;
v134 = v17 (v133);
history[history_index++] = (int)v134;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}
