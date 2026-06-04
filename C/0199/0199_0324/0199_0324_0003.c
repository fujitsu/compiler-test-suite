#include <stdlib.h>
extern signed int v1 (unsigned int, signed char);
extern signed int (*v2) (unsigned int, signed char);
signed char v3 (signed int, signed short);
signed char (*v4) (signed int, signed short) = v3;
extern signed short v5 (signed short, signed char, unsigned char);
extern signed short (*v6) (signed short, signed char, unsigned char);
extern signed int v7 (unsigned short, signed char, signed char);
extern signed int (*v8) (unsigned short, signed char, signed char);
unsigned char v11 (signed char, signed char);
unsigned char (*v12) (signed char, signed char) = v11;
extern unsigned short v13 (signed int, signed char, unsigned int);
extern unsigned short (*v14) (signed int, signed char, unsigned int);
unsigned char v15 (signed char, signed int);
unsigned char (*v16) (signed char, signed int) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
void v19 (unsigned char, signed short);
void (*v20) (unsigned char, signed short) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
unsigned char v25 (signed short, unsigned char, unsigned int, unsigned int);
unsigned char (*v26) (signed short, unsigned char, unsigned int, unsigned int) = v25;
extern signed int v27 (signed char, unsigned char);
extern signed int (*v28) (signed char, unsigned char);
extern void v29 (signed int);
extern void (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v96 = 4;
signed char v95 = 1;
unsigned short v94 = 5;

unsigned char v25 (signed short v97, unsigned char v98, unsigned int v99, unsigned int v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = 3;
unsigned int v102 = 2U;
unsigned char v101 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned char v104, signed short v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned short v108 = 2;
signed char v107 = 1;
unsigned short v106 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed char v109, signed int v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = 0;
unsigned char v112 = 6;
signed short v111 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed char v114, signed char v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = -2;
unsigned int v117 = 4U;
unsigned char v116 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed int v119, signed short v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 5;
unsigned char v122 = 5;
signed int v121 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
