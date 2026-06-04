#include <stdlib.h>
signed short v1 (unsigned int, unsigned int);
signed short (*v2) (unsigned int, unsigned int) = v1;
signed char v3 (signed int, unsigned char, unsigned short);
signed char (*v4) (signed int, unsigned char, unsigned short) = v3;
extern signed char v5 (unsigned short, signed short);
extern signed char (*v6) (unsigned short, signed short);
extern void v7 (void);
extern void (*v8) (void);
extern signed int v9 (unsigned short, signed int);
extern signed int (*v10) (unsigned short, signed int);
signed short v11 (signed short);
signed short (*v12) (signed short) = v11;
unsigned char v13 (unsigned short, signed int, unsigned char, unsigned short);
unsigned char (*v14) (unsigned short, signed int, unsigned char, unsigned short) = v13;
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern void v19 (unsigned char, unsigned short, unsigned char);
extern void (*v20) (unsigned char, unsigned short, unsigned char);
extern unsigned int v21 (unsigned short);
extern unsigned int (*v22) (unsigned short);
void v23 (signed char, signed short, unsigned int, unsigned short);
void (*v24) (signed char, signed short, unsigned int, unsigned short) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed int v27 (signed int, signed short);
extern signed int (*v28) (signed int, signed short);
extern void v29 (signed int, unsigned short);
extern void (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v102 = -3;
signed char v101 = -4;
signed short v100 = -4;

void v23 (signed char v103, signed short v104, unsigned int v105, unsigned short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 4;
unsigned short v108 = 4;
unsigned int v107 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v110, signed int v111, unsigned char v112, unsigned short v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned short v116 = 2;
unsigned short v115 = 1;
unsigned int v114 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed short v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 7;
unsigned int v119 = 3U;
signed char v118 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed int v121, unsigned char v122, unsigned short v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = 2;
unsigned int v125 = 5U;
unsigned char v124 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned int v127, unsigned int v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = 0;
signed int v130 = -3;
unsigned short v129 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v132;
v132 = v25 ();
history[history_index++] = (int)v132;
}
break;
case 2: 
{
unsigned short v133;
signed short v134;
signed char v135;
v133 = v129 - 0;
v134 = 2 - 3;
v135 = v5 (v133, v134);
history[history_index++] = (int)v135;
}
break;
case 4: 
{
unsigned char v136;
unsigned short v137;
unsigned char v138;
v136 = 1 + 2;
v137 = 5 + 7;
v138 = 6 + 7;
v19 (v136, v137, v138);
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
