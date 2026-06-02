#include <stdlib.h>
extern unsigned int v3 (signed int, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v4) (signed int, unsigned int, unsigned int, unsigned int);
extern unsigned char v5 (unsigned char, signed int, unsigned int);
extern unsigned char (*v6) (unsigned char, signed int, unsigned int);
void v7 (unsigned short, signed short);
void (*v8) (unsigned short, signed short) = v7;
signed int v11 (signed int, unsigned int, signed int, unsigned short);
signed int (*v12) (signed int, unsigned int, signed int, unsigned short) = v11;
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned int v15 (unsigned short, signed int);
extern unsigned int (*v16) (unsigned short, signed int);
extern void v17 (signed short, signed char, unsigned short, unsigned int);
extern void (*v18) (signed short, signed char, unsigned short, unsigned int);
extern signed short v19 (unsigned char, signed int, unsigned short);
extern signed short (*v20) (unsigned char, signed int, unsigned short);
extern signed int v21 (signed char);
extern signed int (*v22) (signed char);
extern void v23 (signed short, unsigned short, signed int);
extern void (*v24) (signed short, unsigned short, signed int);
extern signed char v25 (signed char, signed int);
extern signed char (*v26) (signed char, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (unsigned int, unsigned short, signed char, signed int);
extern signed char (*v30) (unsigned int, unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v107 = 0;
signed int v106 = 1;
unsigned char v105 = 2;

signed int v11 (signed int v108, unsigned int v109, signed int v110, unsigned short v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 5;
signed short v113 = -1;
unsigned int v112 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned short v115, signed short v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned short v119 = 0;
signed int v118 = -2;
signed short v117 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
