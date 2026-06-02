#include <stdlib.h>
extern signed int v1 (unsigned char, signed char);
extern signed int (*v2) (unsigned char, signed char);
extern signed int v3 (unsigned char, unsigned char);
extern signed int (*v4) (unsigned char, unsigned char);
signed int v5 (signed int, unsigned char);
signed int (*v6) (signed int, unsigned char) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (signed int);
extern void (*v10) (signed int);
extern signed char v11 (signed int, signed short, signed short);
extern signed char (*v12) (signed int, signed short, signed short);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
void v15 (signed int, signed short);
void (*v16) (signed int, signed short) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern void v19 (unsigned char, signed short, signed short);
extern void (*v20) (unsigned char, signed short, signed short);
void v21 (unsigned char, signed char);
void (*v22) (unsigned char, signed char) = v21;
extern unsigned char v23 (signed char, unsigned short, unsigned short);
extern unsigned char (*v24) (signed char, unsigned short, unsigned short);
extern unsigned short v25 (signed short, signed char, unsigned char);
extern unsigned short (*v26) (signed short, signed char, unsigned char);
extern void v27 (signed short, signed int, signed int);
extern void (*v28) (signed short, signed int, signed int);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v112 = -1;
unsigned int v111 = 2U;
unsigned short v110 = 0;

void v21 (unsigned char v113, signed char v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned int v117 = 0U;
unsigned short v116 = 0;
signed int v115 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed int v118, signed short v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 4;
unsigned short v121 = 0;
signed int v120 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed int v123, unsigned char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = 0;
unsigned int v126 = 7U;
signed char v125 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
