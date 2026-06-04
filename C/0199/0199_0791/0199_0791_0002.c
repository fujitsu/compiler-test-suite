#include <stdlib.h>
extern void v1 (unsigned short, signed short, signed char, unsigned short);
extern void (*v2) (unsigned short, signed short, signed char, unsigned short);
extern signed char v3 (signed int, unsigned int);
extern signed char (*v4) (signed int, unsigned int);
unsigned char v5 (signed int, signed int, signed char, unsigned short);
unsigned char (*v6) (signed int, signed int, signed char, unsigned short) = v5;
extern unsigned char v7 (signed short, signed char);
extern unsigned char (*v8) (signed short, signed char);
signed short v9 (void);
signed short (*v10) (void) = v9;
extern void v11 (signed char, unsigned int, signed short);
extern void (*v12) (signed char, unsigned int, signed short);
extern unsigned char v13 (signed int, unsigned short);
extern unsigned char (*v14) (signed int, unsigned short);
extern signed short v15 (unsigned int, unsigned short);
extern signed short (*v16) (unsigned int, unsigned short);
extern signed int v17 (unsigned char, unsigned char, signed short, signed int);
extern signed int (*v18) (unsigned char, unsigned char, signed short, signed int);
extern unsigned short v19 (unsigned int);
extern unsigned short (*v20) (unsigned int);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
void v23 (unsigned int, unsigned int, unsigned short, unsigned int);
void (*v24) (unsigned int, unsigned int, unsigned short, unsigned int) = v23;
void v25 (signed int, signed int, signed int, unsigned char);
void (*v26) (signed int, signed int, signed int, unsigned char) = v25;
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v89 = 2;
signed int v88 = -2;
unsigned int v87 = 2U;

void v25 (signed int v90, signed int v91, signed int v92, unsigned char v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned char v96 = 7;
signed char v95 = 0;
signed short v94 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (unsigned int v97, unsigned int v98, unsigned short v99, unsigned int v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = 0;
unsigned int v102 = 4U;
unsigned char v101 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
unsigned char v106 = 2;
unsigned short v105 = 1;
unsigned short v104 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed int v107, signed int v108, signed char v109, unsigned short v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 4;
signed short v112 = -1;
signed char v111 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
