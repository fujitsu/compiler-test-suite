#include <stdlib.h>
extern signed short v1 (signed short);
extern signed short (*v2) (signed short);
extern void v3 (signed short, signed char, unsigned int);
extern void (*v4) (signed short, signed char, unsigned int);
extern void v5 (unsigned int, unsigned char, signed int, unsigned short);
extern void (*v6) (unsigned int, unsigned char, signed int, unsigned short);
extern unsigned int v7 (unsigned char, signed char, unsigned int);
extern unsigned int (*v8) (unsigned char, signed char, unsigned int);
extern void v9 (unsigned char, unsigned char, unsigned int, unsigned short);
extern void (*v10) (unsigned char, unsigned char, unsigned int, unsigned short);
extern signed int v11 (void);
extern signed int (*v12) (void);
void v13 (signed int, signed short, signed char);
void (*v14) (signed int, signed short, signed char) = v13;
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
void v19 (unsigned int, signed int, signed short);
void (*v20) (unsigned int, signed int, signed short) = v19;
extern unsigned short v21 (signed int, unsigned char);
extern unsigned short (*v22) (signed int, unsigned char);
extern unsigned short v23 (unsigned int, signed int);
extern unsigned short (*v24) (unsigned int, signed int);
extern unsigned short v25 (unsigned short);
extern unsigned short (*v26) (unsigned short);
extern signed int v29 (signed char, unsigned int, unsigned short);
extern signed int (*v30) (signed char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v107 = 1;
unsigned char v106 = 0;
signed short v105 = 0;

void v19 (unsigned int v108, signed int v109, signed short v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = -1;
signed short v112 = 1;
signed short v111 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed int v114, signed short v115, signed char v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned short v119 = 4;
signed char v118 = 3;
signed char v117 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
