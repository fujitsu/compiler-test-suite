#include <stdlib.h>
extern signed int v1 (signed char, unsigned int, unsigned short);
extern signed int (*v2) (signed char, unsigned int, unsigned short);
void v3 (signed short, unsigned short, signed short, unsigned int);
void (*v4) (signed short, unsigned short, signed short, unsigned int) = v3;
extern unsigned short v5 (signed int, signed char, signed int);
extern unsigned short (*v6) (signed int, signed char, signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
unsigned int v9 (unsigned short, signed int);
unsigned int (*v10) (unsigned short, signed int) = v9;
extern void v11 (unsigned char, unsigned char, signed short);
extern void (*v12) (unsigned char, unsigned char, signed short);
extern unsigned short v13 (signed int);
extern unsigned short (*v14) (signed int);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned int v19 (signed char, signed short, unsigned char, unsigned short);
extern unsigned int (*v20) (signed char, signed short, unsigned char, unsigned short);
signed int v21 (void);
signed int (*v22) (void) = v21;
void v23 (signed int, unsigned int);
void (*v24) (signed int, unsigned int) = v23;
extern signed char v25 (signed short, signed short, unsigned int, signed char);
extern signed char (*v26) (signed short, signed short, unsigned int, signed char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern void v29 (unsigned int, signed char);
extern void (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v119 = -4;
signed int v118 = 0;
signed int v117 = 0;

void v23 (signed int v120, unsigned int v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 6;
unsigned short v123 = 5;
unsigned short v122 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
unsigned int v127 = 0U;
unsigned int v126 = 2U;
signed short v125 = -1;
trace++;
switch (trace)
{
case 3: 
return -2;
case 6: 
return 3;
default: abort ();
}
}
}
}

unsigned int v9 (unsigned short v128, signed int v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed char v132 = -3;
unsigned short v131 = 5;
unsigned short v130 = 1;
trace++;
switch (trace)
{
case 10: 
{
signed short v133;
v133 = v27 ();
history[history_index++] = (int)v133;
}
break;
case 12: 
return 5U;
default: abort ();
}
}
}
}

void v3 (signed short v134, unsigned short v135, signed short v136, unsigned int v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed int v140 = 0;
unsigned short v139 = 6;
signed int v138 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
