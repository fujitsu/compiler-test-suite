#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern unsigned char v3 (signed short, signed char);
extern unsigned char (*v4) (signed short, signed char);
extern void v5 (unsigned char, unsigned int, signed int, unsigned char);
extern void (*v6) (unsigned char, unsigned int, signed int, unsigned char);
extern unsigned short v7 (unsigned int, signed char, signed int, unsigned int);
extern unsigned short (*v8) (unsigned int, signed char, signed int, unsigned int);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
extern signed int v15 (unsigned char, unsigned char);
extern signed int (*v16) (unsigned char, unsigned char);
extern signed char v17 (signed short);
extern signed char (*v18) (signed short);
void v19 (signed int, unsigned int, signed int, signed char);
void (*v20) (signed int, unsigned int, signed int, signed char) = v19;
signed char v21 (signed short, unsigned int);
signed char (*v22) (signed short, unsigned int) = v21;
extern signed char v23 (unsigned char);
extern signed char (*v24) (unsigned char);
extern unsigned int v27 (signed char, unsigned char, signed short, unsigned short);
extern unsigned int (*v28) (signed char, unsigned char, signed short, unsigned short);
extern signed short v29 (unsigned int, signed int);
extern signed short (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v84 = 7;
unsigned char v83 = 6;
unsigned char v82 = 7;

signed char v21 (signed short v85, unsigned int v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = -3;
signed int v88 = 2;
signed int v87 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed int v90, unsigned int v91, signed int v92, signed char v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = 2;
signed short v95 = 0;
signed char v94 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
signed char v99 = 2;
signed int v98 = 1;
unsigned int v97 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
unsigned short v102 = 4;
signed int v101 = 0;
signed int v100 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
