#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
signed char v3 (unsigned short);
signed char (*v4) (unsigned short) = v3;
signed char v5 (unsigned short);
signed char (*v6) (unsigned short) = v5;
extern unsigned int v7 (signed int, unsigned short, unsigned short);
extern unsigned int (*v8) (signed int, unsigned short, unsigned short);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed short v13 (signed char, unsigned short);
extern signed short (*v14) (signed char, unsigned short);
extern void v15 (unsigned int, unsigned int);
extern void (*v16) (unsigned int, unsigned int);
extern unsigned int v17 (signed int, signed char, unsigned int, unsigned short);
extern unsigned int (*v18) (signed int, signed char, unsigned int, unsigned short);
extern void v19 (signed int, unsigned int, unsigned int);
extern void (*v20) (signed int, unsigned int, unsigned int);
void v21 (void);
void (*v22) (void) = v21;
unsigned int v23 (signed int, signed short, signed int, signed int);
unsigned int (*v24) (signed int, signed short, signed int, signed int) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed char v29 (signed int);
extern signed char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v106 = 7U;
signed int v105 = -1;
signed int v104 = 1;

unsigned int v23 (signed int v107, signed short v108, signed int v109, signed int v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned char v113 = 4;
signed char v112 = 0;
signed int v111 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (void)
{
{
for (;;) {
unsigned short v116 = 6;
signed short v115 = -3;
signed short v114 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned short v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = -3;
unsigned short v119 = 3;
signed int v118 = -3;
trace++;
switch (trace)
{
case 1: 
return -1;
default: abort ();
}
}
}
}

signed char v3 (unsigned short v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = 3;
unsigned char v123 = 2;
unsigned int v122 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
