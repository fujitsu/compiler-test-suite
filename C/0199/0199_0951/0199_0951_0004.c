#include <stdlib.h>
unsigned char v1 (signed int, signed char, signed int);
unsigned char (*v2) (signed int, signed char, signed int) = v1;
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (signed int, unsigned char, unsigned char);
extern void (*v10) (signed int, unsigned char, unsigned char);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (signed int, unsigned char, unsigned int);
extern signed char (*v16) (signed int, unsigned char, unsigned int);
void v17 (signed short, unsigned char, unsigned short);
void (*v18) (signed short, unsigned char, unsigned short) = v17;
void v19 (void);
void (*v20) (void) = v19;
extern unsigned char v21 (signed int, unsigned char, unsigned int);
extern unsigned char (*v22) (signed int, unsigned char, unsigned int);
void v23 (unsigned char, signed short);
void (*v24) (unsigned char, signed short) = v23;
extern unsigned char v25 (unsigned int);
extern unsigned char (*v26) (unsigned int);
extern signed int v27 (unsigned short, unsigned int);
extern signed int (*v28) (unsigned short, unsigned int);
extern signed short v29 (unsigned int, signed char, unsigned int);
extern signed short (*v30) (unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v108 = 3;
signed int v107 = 0;
unsigned short v106 = 0;

void v23 (unsigned char v109, signed short v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 2;
signed char v112 = -2;
unsigned int v111 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (void)
{
{
for (;;) {
unsigned short v116 = 2;
signed short v115 = 0;
signed short v114 = 0;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v117;
unsigned int v118;
v117 = v116 + 5;
v118 = v3 (v117);
history[history_index++] = (int)v118;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

void v17 (signed short v119, unsigned char v120, unsigned short v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = 0;
signed int v123 = 2;
unsigned short v122 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
unsigned char v127 = 5;
unsigned char v126 = 1;
signed int v125 = -2;
trace++;
switch (trace)
{
case 4: 
return -2;
case 6: 
return -3;
default: abort ();
}
}
}
}

unsigned char v1 (signed int v128, signed char v129, signed int v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned char v133 = 0;
unsigned short v132 = 3;
unsigned char v131 = 5;
trace++;
switch (trace)
{
case 0: 
{
signed int v134;
unsigned char v135;
unsigned int v136;
signed char v137;
v134 = v130 - 2;
v135 = v133 + v133;
v136 = 2U + 5U;
v137 = v15 (v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 16: 
return 1;
default: abort ();
}
}
}
}
