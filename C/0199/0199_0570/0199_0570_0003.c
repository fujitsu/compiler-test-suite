#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed short v9 (unsigned char, signed short, signed int, signed short);
extern signed short (*v10) (unsigned char, signed short, signed int, signed short);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
signed int v13 (unsigned int, unsigned int, unsigned short);
signed int (*v14) (unsigned int, unsigned int, unsigned short) = v13;
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
unsigned int v21 (unsigned int, signed int, signed int);
unsigned int (*v22) (unsigned int, signed int, signed int) = v21;
extern signed int v23 (unsigned char, signed short, signed int);
extern signed int (*v24) (unsigned char, signed short, signed int);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
void v27 (void);
void (*v28) (void) = v27;
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v101 = 5;
signed char v100 = -3;
signed char v99 = -4;

void v29 (void)
{
{
for (;;) {
signed short v104 = -3;
unsigned short v103 = 5;
signed char v102 = 3;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}

void v27 (void)
{
{
for (;;) {
signed short v107 = -2;
unsigned int v106 = 2U;
unsigned int v105 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (unsigned int v108, signed int v109, signed int v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 6U;
signed int v112 = -3;
unsigned int v111 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
signed short v116 = -3;
unsigned short v115 = 1;
unsigned short v114 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned int v117, unsigned int v118, unsigned short v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 5U;
unsigned short v121 = 0;
signed char v120 = 0;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v123;
signed short v124;
signed int v125;
signed int v126;
v123 = 2 + 0;
v124 = 0 - -4;
v125 = 2 - 2;
v126 = v23 (v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}
