#include <stdlib.h>
extern signed short v1 (signed int, signed char);
extern signed short (*v2) (signed int, signed char);
extern void v3 (signed char, unsigned int);
extern void (*v4) (signed char, unsigned int);
extern unsigned int v5 (unsigned short, unsigned char);
extern unsigned int (*v6) (unsigned short, unsigned char);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
unsigned char v9 (unsigned int);
unsigned char (*v10) (unsigned int) = v9;
extern void v11 (signed int, unsigned int, signed int);
extern void (*v12) (signed int, unsigned int, signed int);
extern signed char v13 (signed char, unsigned char);
extern signed char (*v14) (signed char, unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (signed char, signed int, unsigned int);
extern void (*v18) (signed char, signed int, unsigned int);
extern signed char v19 (unsigned char, unsigned int);
extern signed char (*v20) (unsigned char, unsigned int);
extern signed char v21 (signed char, unsigned char);
extern signed char (*v22) (signed char, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
unsigned short v25 (signed char, unsigned char, signed short);
unsigned short (*v26) (signed char, unsigned char, signed short) = v25;
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
void v29 (signed char);
void (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v112 = -3;
signed char v111 = -3;
signed int v110 = -1;

void v29 (signed char v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -3;
signed int v115 = 1;
signed short v114 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (signed char v117, unsigned char v118, signed short v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed int v122 = 0;
unsigned char v121 = 2;
unsigned int v120 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 6;
signed int v125 = -4;
signed int v124 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
