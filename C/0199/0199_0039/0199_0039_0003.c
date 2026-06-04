#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned short, signed int);
extern signed int (*v2) (unsigned short, unsigned short, signed int);
extern signed char v3 (signed char, unsigned int, unsigned int);
extern signed char (*v4) (signed char, unsigned int, unsigned int);
signed int v5 (signed char);
signed int (*v6) (signed char) = v5;
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v11 (signed short, unsigned char);
extern void (*v12) (signed short, unsigned char);
extern unsigned char v13 (unsigned short, unsigned short, signed int, signed char);
extern unsigned char (*v14) (unsigned short, unsigned short, signed int, signed char);
signed short v15 (signed char, unsigned int, unsigned short, unsigned short);
signed short (*v16) (signed char, unsigned int, unsigned short, unsigned short) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned short v19 (unsigned char, unsigned int, unsigned short);
extern unsigned short (*v20) (unsigned char, unsigned int, unsigned short);
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
void v23 (void);
void (*v24) (void) = v23;
signed char v25 (signed int);
signed char (*v26) (signed int) = v25;
extern unsigned short v27 (signed int, unsigned char);
extern unsigned short (*v28) (signed int, unsigned char);
unsigned short v29 (unsigned char, unsigned short, signed char);
unsigned short (*v30) (unsigned char, unsigned short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v89 = -1;
unsigned int v88 = 5U;
signed short v87 = 3;

unsigned short v29 (unsigned char v90, unsigned short v91, signed char v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 4U;
unsigned short v94 = 0;
unsigned char v93 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (signed int v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = 2;
signed short v98 = 0;
signed int v97 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (void)
{
{
for (;;) {
unsigned char v102 = 6;
unsigned char v101 = 7;
unsigned short v100 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed char v103, unsigned int v104, unsigned short v105, unsigned short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned short v109 = 6;
unsigned char v108 = 3;
unsigned short v107 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed char v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = 3;
signed int v112 = -4;
signed int v111 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
