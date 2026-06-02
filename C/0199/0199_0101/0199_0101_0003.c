#include <stdlib.h>
signed char v1 (signed int);
signed char (*v2) (signed int) = v1;
extern unsigned char v3 (signed short, unsigned short, signed char);
extern unsigned char (*v4) (signed short, unsigned short, signed char);
void v7 (signed int);
void (*v8) (signed int) = v7;
extern void v11 (signed short, unsigned int, signed char);
extern void (*v12) (signed short, unsigned int, signed char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern unsigned short v17 (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned char, unsigned int, unsigned short);
extern signed char v19 (signed char, signed char, unsigned short);
extern signed char (*v20) (signed char, signed char, unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
signed short v25 (unsigned short, signed int);
signed short (*v26) (unsigned short, signed int) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern void v29 (signed int, unsigned char, unsigned int);
extern void (*v30) (signed int, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v106 = -4;
signed int v105 = 3;
unsigned short v104 = 5;

signed short v25 (unsigned short v107, signed int v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 1U;
signed int v110 = -3;
signed short v109 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
signed short v114 = 3;
signed char v113 = 3;
signed int v112 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed int v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = 2;
signed int v117 = 1;
unsigned short v116 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed int v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = -2;
signed char v121 = -1;
unsigned char v120 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed short v123;
v123 = v21 ();
history[history_index++] = (int)v123;
}
break;
case 16: 
return -1;
default: abort ();
}
}
}
}
