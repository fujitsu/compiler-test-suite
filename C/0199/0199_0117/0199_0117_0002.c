#include <stdlib.h>
extern void v1 (unsigned int, signed short);
extern void (*v2) (unsigned int, signed short);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned int v5 (unsigned int, signed int);
extern unsigned int (*v6) (unsigned int, signed int);
extern signed char v7 (signed char);
extern signed char (*v8) (signed char);
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
signed short v17 (unsigned int);
signed short (*v18) (unsigned int) = v17;
extern unsigned char v19 (unsigned char, unsigned short, unsigned int, signed short);
extern unsigned char (*v20) (unsigned char, unsigned short, unsigned int, signed short);
extern signed char v21 (signed char, signed short, signed int);
extern signed char (*v22) (signed char, signed short, signed int);
extern void v25 (unsigned short, unsigned int, signed char);
extern void (*v26) (unsigned short, unsigned int, signed char);
void v29 (signed char, unsigned char, signed short);
void (*v30) (signed char, unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v111 = -2;
signed int v110 = -2;
unsigned char v109 = 1;

void v29 (signed char v112, unsigned char v113, signed short v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 1;
unsigned short v116 = 5;
signed int v115 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned int v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = -2;
signed int v120 = -4;
signed short v119 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
