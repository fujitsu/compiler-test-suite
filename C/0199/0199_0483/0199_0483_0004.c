#include <stdlib.h>
extern void v1 (signed short, unsigned char, unsigned char, signed int);
extern void (*v2) (signed short, unsigned char, unsigned char, signed int);
signed char v3 (void);
signed char (*v4) (void) = v3;
extern void v5 (signed short);
extern void (*v6) (signed short);
extern unsigned char v7 (unsigned int, unsigned short, signed int);
extern unsigned char (*v8) (unsigned int, unsigned short, signed int);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
signed char v11 (signed short, signed int, signed char);
signed char (*v12) (signed short, signed int, signed char) = v11;
extern signed char v13 (unsigned short, signed char, unsigned short, unsigned int);
extern signed char (*v14) (unsigned short, signed char, unsigned short, unsigned int);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
signed char v17 (void);
signed char (*v18) (void) = v17;
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern void v21 (unsigned int, unsigned int, signed char, unsigned char);
extern void (*v22) (unsigned int, unsigned int, signed char, unsigned char);
extern signed short v23 (signed short, signed short, signed int);
extern signed short (*v24) (signed short, signed short, signed int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (signed char, unsigned int, signed char);
extern void (*v30) (signed char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v112 = 5U;
unsigned int v111 = 5U;
unsigned int v110 = 5U;

unsigned int v19 (void)
{
{
for (;;) {
unsigned short v115 = 4;
unsigned short v114 = 2;
signed char v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned short v118 = 6;
unsigned char v117 = 0;
signed char v116 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed short v119, signed int v120, signed char v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned int v124 = 5U;
signed char v123 = 2;
signed int v122 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
signed short v127 = -4;
signed short v126 = 0;
signed short v125 = 2;
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
signed char v130 = -4;
signed int v129 = -3;
signed int v128 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
