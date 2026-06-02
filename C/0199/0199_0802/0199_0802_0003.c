#include <stdlib.h>
signed char v3 (void);
signed char (*v4) (void) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
void v7 (signed char, unsigned short, unsigned int, signed short);
void (*v8) (signed char, unsigned short, unsigned int, signed short) = v7;
extern unsigned int v9 (signed char, signed short, unsigned int, signed int);
extern unsigned int (*v10) (signed char, signed short, unsigned int, signed int);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
signed int v13 (unsigned short, unsigned char, signed short);
signed int (*v14) (unsigned short, unsigned char, signed short) = v13;
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
unsigned char v17 (unsigned short, signed char, signed int);
unsigned char (*v18) (unsigned short, signed char, signed int) = v17;
extern void v19 (signed short);
extern void (*v20) (signed short);
extern void v23 (unsigned int, signed char);
extern void (*v24) (unsigned int, signed char);
extern void v25 (void);
extern void (*v26) (void);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern signed int v29 (unsigned short);
extern signed int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v87 = 6U;
signed short v86 = -2;
signed int v85 = -4;

signed short v27 (void)
{
{
for (;;) {
signed char v90 = 3;
signed short v89 = 2;
unsigned char v88 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned short v91, signed char v92, signed int v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 6U;
unsigned short v95 = 7;
signed short v94 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned short v97, unsigned char v98, signed short v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed char v102 = -3;
signed char v101 = 1;
signed char v100 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed char v103, unsigned short v104, unsigned int v105, signed short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = 1;
signed char v108 = 2;
signed int v107 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned short v112 = 0;
signed int v111 = -2;
unsigned short v110 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed short v113;
v113 = -3 - -3;
v19 (v113);
}
break;
case 13: 
return -1;
default: abort ();
}
}
}
}
