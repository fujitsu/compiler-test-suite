#include <stdlib.h>
extern unsigned char v3 (unsigned char, unsigned short, signed int, signed char);
extern unsigned char (*v4) (unsigned char, unsigned short, signed int, signed char);
extern void v5 (unsigned char, unsigned char);
extern void (*v6) (unsigned char, unsigned char);
extern void v7 (unsigned short, signed int, signed short);
extern void (*v8) (unsigned short, signed int, signed short);
extern unsigned int v9 (unsigned short, signed int, unsigned short, signed short);
extern unsigned int (*v10) (unsigned short, signed int, unsigned short, signed short);
extern signed char v11 (unsigned short, unsigned short, signed char, signed short);
extern signed char (*v12) (unsigned short, unsigned short, signed char, signed short);
signed short v13 (unsigned short, signed int, signed short);
signed short (*v14) (unsigned short, signed int, signed short) = v13;
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed int v23 (signed short, unsigned short);
signed int (*v24) (signed short, unsigned short) = v23;
extern unsigned short v25 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned int);
extern unsigned int v27 (unsigned int, signed char, signed char, signed char);
extern unsigned int (*v28) (unsigned int, signed char, signed char, signed char);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v112 = 2;
unsigned short v111 = 7;
signed char v110 = 2;

void v29 (void)
{
{
for (;;) {
signed int v115 = 2;
signed char v114 = 1;
signed int v113 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed short v116, unsigned short v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = 2;
signed short v119 = 0;
unsigned char v118 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned short v121, signed int v122, signed short v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed int v126 = -1;
signed int v125 = 0;
unsigned int v124 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
