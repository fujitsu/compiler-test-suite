#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed short);
extern unsigned short (*v2) (unsigned int, signed short);
signed char v3 (unsigned int, signed char);
signed char (*v4) (unsigned int, signed char) = v3;
extern void v5 (unsigned char, signed short);
extern void (*v6) (unsigned char, signed short);
unsigned short v7 (unsigned short, unsigned short, unsigned short, signed char);
unsigned short (*v8) (unsigned short, unsigned short, unsigned short, signed char) = v7;
extern unsigned char v9 (unsigned char, unsigned char, signed char);
extern unsigned char (*v10) (unsigned char, unsigned char, signed char);
void v11 (signed short, signed char);
void (*v12) (signed short, signed char) = v11;
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed short v15 (unsigned int, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char);
extern unsigned char v17 (signed int);
extern unsigned char (*v18) (signed int);
extern unsigned char v19 (signed short, unsigned int);
extern unsigned char (*v20) (signed short, unsigned int);
extern void v23 (void);
extern void (*v24) (void);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern unsigned int v27 (signed char, unsigned char, signed char, unsigned char);
extern unsigned int (*v28) (signed char, unsigned char, signed char, unsigned char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v107 = 6;
signed int v106 = -3;
unsigned char v105 = 1;

void v11 (signed short v108, signed char v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = -2;
unsigned int v111 = 1U;
signed char v110 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v113, unsigned short v114, unsigned short v115, signed char v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned char v119 = 6;
signed char v118 = -3;
signed int v117 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v120, signed char v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 5;
unsigned int v123 = 5U;
signed char v122 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
