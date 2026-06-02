#include <stdlib.h>
extern unsigned short v1 (signed short, signed int, signed int);
extern unsigned short (*v2) (signed short, signed int, signed int);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed char v5 (unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, unsigned char);
unsigned short v7 (unsigned int);
unsigned short (*v8) (unsigned int) = v7;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern signed short v13 (signed int, unsigned int);
extern signed short (*v14) (signed int, unsigned int);
extern void v15 (signed int, signed char, signed short);
extern void (*v16) (signed int, signed char, signed short);
void v17 (unsigned int, signed short);
void (*v18) (unsigned int, signed short) = v17;
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
signed int v21 (unsigned short);
signed int (*v22) (unsigned short) = v21;
signed int v23 (void);
signed int (*v24) (void) = v23;
extern signed int v25 (unsigned int, unsigned int, signed short, unsigned short);
extern signed int (*v26) (unsigned int, unsigned int, signed short, unsigned short);
extern signed int v27 (void);
extern signed int (*v28) (void);
signed int v29 (signed short);
signed int (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v107 = -3;
unsigned int v106 = 2U;
unsigned int v105 = 5U;

signed int v29 (signed short v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 6U;
signed int v110 = 3;
unsigned char v109 = 6;
trace++;
switch (trace)
{
case 8: 
return -2;
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
unsigned char v114 = 4;
signed int v113 = 1;
unsigned char v112 = 0;
trace++;
switch (trace)
{
case 10: 
return -4;
default: abort ();
}
}
}
}

signed int v21 (unsigned short v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 2;
unsigned char v117 = 2;
signed char v116 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned int v119, signed short v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = 3;
unsigned char v122 = 3;
unsigned char v121 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = 3;
signed int v126 = -3;
unsigned int v125 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
