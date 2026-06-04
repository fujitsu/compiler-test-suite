#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
void v3 (signed short, signed int, unsigned char, signed int);
void (*v4) (signed short, signed int, unsigned char, signed int) = v3;
extern signed short v5 (unsigned char);
extern signed short (*v6) (unsigned char);
extern unsigned short v7 (unsigned int, unsigned short, signed char);
extern unsigned short (*v8) (unsigned int, unsigned short, signed char);
unsigned char v9 (signed int);
unsigned char (*v10) (signed int) = v9;
extern signed char v11 (void);
extern signed char (*v12) (void);
void v13 (signed short, signed short, signed int, signed int);
void (*v14) (signed short, signed short, signed int, signed int) = v13;
void v15 (signed int, unsigned int, signed char, unsigned int);
void (*v16) (signed int, unsigned int, signed char, unsigned int) = v15;
extern void v19 (signed char, unsigned char, unsigned int, unsigned char);
extern void (*v20) (signed char, unsigned char, unsigned int, unsigned char);
extern unsigned int v21 (signed short, signed short, unsigned short, unsigned char);
extern unsigned int (*v22) (signed short, signed short, unsigned short, unsigned char);
extern signed int v23 (unsigned char);
extern signed int (*v24) (unsigned char);
signed short v25 (unsigned int, unsigned char, unsigned int);
signed short (*v26) (unsigned int, unsigned char, unsigned int) = v25;
extern unsigned int v27 (signed char, signed int, signed int);
extern unsigned int (*v28) (signed char, signed int, signed int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v105 = 5U;
signed short v104 = 1;
signed short v103 = 0;

signed short v25 (unsigned int v106, unsigned char v107, unsigned int v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 2U;
signed char v110 = 2;
unsigned short v109 = 0;
trace++;
switch (trace)
{
case 4: 
{
signed char v112;
v112 = v29 ();
history[history_index++] = (int)v112;
}
break;
case 6: 
{
signed char v113;
v113 = v29 ();
history[history_index++] = (int)v113;
}
break;
case 8: 
{
signed char v114;
v114 = v29 ();
history[history_index++] = (int)v114;
}
break;
case 10: 
{
signed char v115;
v115 = v29 ();
history[history_index++] = (int)v115;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

void v15 (signed int v116, unsigned int v117, signed char v118, unsigned int v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 3;
signed char v121 = 1;
signed short v120 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed short v123, signed short v124, signed int v125, signed int v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed char v129 = 2;
unsigned short v128 = 1;
unsigned int v127 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed int v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = 2;
signed short v132 = -2;
unsigned short v131 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed short v134, signed int v135, unsigned char v136, signed int v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed int v140 = -4;
unsigned int v139 = 7U;
unsigned char v138 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
