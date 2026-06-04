#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int, signed char);
extern unsigned char (*v2) (signed char, unsigned int, signed char);
extern void v3 (signed int);
extern void (*v4) (signed int);
extern signed short v5 (signed int, signed int, unsigned char, signed char);
extern signed short (*v6) (signed int, signed int, unsigned char, signed char);
unsigned short v7 (unsigned char, unsigned int);
unsigned short (*v8) (unsigned char, unsigned int) = v7;
extern signed char v9 (unsigned int, signed char);
extern signed char (*v10) (unsigned int, signed char);
signed int v11 (unsigned int, unsigned int, unsigned char);
signed int (*v12) (unsigned int, unsigned int, unsigned char) = v11;
extern signed short v13 (signed int, unsigned char, signed short);
extern signed short (*v14) (signed int, unsigned char, signed short);
extern unsigned int v15 (unsigned short, signed char, signed char);
extern unsigned int (*v16) (unsigned short, signed char, signed char);
signed int v17 (unsigned char, unsigned short, unsigned short);
signed int (*v18) (unsigned char, unsigned short, unsigned short) = v17;
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern signed char v21 (unsigned int, unsigned int, signed int);
extern signed char (*v22) (unsigned int, unsigned int, signed int);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern unsigned short v25 (unsigned char, signed char);
extern unsigned short (*v26) (unsigned char, signed char);
signed short v27 (unsigned char, unsigned short, signed char);
signed short (*v28) (unsigned char, unsigned short, signed char) = v27;
extern unsigned int v29 (signed char, unsigned char, unsigned int);
extern unsigned int (*v30) (signed char, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v105 = 2;
signed short v104 = -2;
signed int v103 = -2;

signed short v27 (unsigned char v106, unsigned short v107, signed char v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 4;
signed short v110 = -1;
signed short v109 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
signed short v114 = -3;
signed short v113 = -1;
unsigned char v112 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned char v115, unsigned short v116, unsigned short v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed int v120 = -4;
unsigned short v119 = 3;
signed int v118 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v121, unsigned int v122, unsigned char v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned int v126 = 6U;
unsigned short v125 = 4;
unsigned char v124 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned char v127, unsigned int v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed short v131 = -3;
signed short v130 = 2;
unsigned short v129 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
