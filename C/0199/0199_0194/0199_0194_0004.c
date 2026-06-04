#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
extern void v5 (unsigned char, signed short, signed int);
extern void (*v6) (unsigned char, signed short, signed int);
extern unsigned char v7 (unsigned char, signed short);
extern unsigned char (*v8) (unsigned char, signed short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
signed short v11 (signed int, signed char, unsigned short);
signed short (*v12) (signed int, signed char, unsigned short) = v11;
extern void v13 (unsigned int, unsigned char);
extern void (*v14) (unsigned int, unsigned char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
unsigned int v17 (signed int);
unsigned int (*v18) (signed int) = v17;
void v19 (unsigned int, unsigned char, signed char, unsigned int);
void (*v20) (unsigned int, unsigned char, signed char, unsigned int) = v19;
extern unsigned int v21 (unsigned int, signed int, signed int, unsigned int);
extern unsigned int (*v22) (unsigned int, signed int, signed int, unsigned int);
extern unsigned short v23 (signed int, unsigned int);
extern unsigned short (*v24) (signed int, unsigned int);
unsigned short v25 (unsigned short);
unsigned short (*v26) (unsigned short) = v25;
signed char v27 (unsigned char, unsigned int);
signed char (*v28) (unsigned char, unsigned int) = v27;
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v104 = -1;
unsigned short v103 = 4;
unsigned char v102 = 3;

signed char v27 (unsigned char v105, unsigned int v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = -1;
unsigned char v108 = 5;
signed char v107 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (unsigned short v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = -4;
signed short v112 = -1;
signed short v111 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned int v114, unsigned char v115, signed char v116, unsigned int v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 0;
unsigned short v119 = 2;
signed char v118 = -2;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v121;
v121 = v15 ();
history[history_index++] = (int)v121;
}
break;
case 8: 
{
unsigned short v122;
v122 = v15 ();
history[history_index++] = (int)v122;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

unsigned int v17 (signed int v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 6;
unsigned char v125 = 1;
unsigned char v124 = 7;
trace++;
switch (trace)
{
case 5: 
return 2U;
case 11: 
return 4U;
default: abort ();
}
}
}
}

signed short v11 (signed int v127, signed char v128, unsigned short v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 3;
unsigned int v131 = 3U;
unsigned short v130 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
signed char v135 = -3;
signed char v134 = -2;
unsigned int v133 = 4U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v136;
signed int v137;
unsigned char v138;
v136 = v133 + 1U;
v137 = -1 + 1;
v138 = v3 (v136, v137);
history[history_index++] = (int)v138;
}
break;
case 16: 
return v133;
default: abort ();
}
}
}
}
