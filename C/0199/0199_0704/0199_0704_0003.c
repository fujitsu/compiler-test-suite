#include <stdlib.h>
extern signed char v3 (signed int);
extern signed char (*v4) (signed int);
extern unsigned int v5 (unsigned short);
extern unsigned int (*v6) (unsigned short);
extern void v7 (signed char, unsigned char, unsigned char);
extern void (*v8) (signed char, unsigned char, unsigned char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed int v11 (signed char, unsigned int);
extern signed int (*v12) (signed char, unsigned int);
extern unsigned char v13 (unsigned short);
extern unsigned char (*v14) (unsigned short);
extern unsigned char v15 (unsigned int, signed short);
extern unsigned char (*v16) (unsigned int, signed short);
extern unsigned int v17 (unsigned char);
extern unsigned int (*v18) (unsigned char);
signed int v19 (unsigned short, signed char);
signed int (*v20) (unsigned short, signed char) = v19;
void v21 (signed int);
void (*v22) (signed int) = v21;
extern unsigned short v23 (unsigned char, signed int);
extern unsigned short (*v24) (unsigned char, signed int);
extern unsigned short v25 (unsigned char, unsigned int, signed char);
extern unsigned short (*v26) (unsigned char, unsigned int, signed char);
extern unsigned int v27 (signed int, signed short, signed int, signed int);
extern unsigned int (*v28) (signed int, signed short, signed int, signed int);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v110 = -2;
unsigned short v109 = 5;
unsigned char v108 = 3;

void v21 (signed int v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 0;
signed int v113 = -2;
signed char v112 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned short v115, signed char v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = 0;
unsigned int v118 = 5U;
unsigned short v117 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
