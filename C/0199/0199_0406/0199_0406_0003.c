#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned short v3 (signed char, unsigned char, unsigned char);
extern unsigned short (*v4) (signed char, unsigned char, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (unsigned char, signed char, unsigned int);
extern signed short (*v8) (unsigned char, signed char, unsigned int);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned char v13 (unsigned int);
extern unsigned char (*v14) (unsigned int);
extern signed int v15 (signed short);
extern signed int (*v16) (signed short);
signed char v17 (unsigned int, unsigned short);
signed char (*v18) (unsigned int, unsigned short) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
extern unsigned int v21 (signed short, signed int, unsigned short);
extern unsigned int (*v22) (signed short, signed int, unsigned short);
unsigned int v25 (signed short, signed short);
unsigned int (*v26) (signed short, signed short) = v25;
extern signed char v29 (unsigned int, unsigned int, unsigned int);
extern signed char (*v30) (unsigned int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v107 = 6;
unsigned char v106 = 1;
signed short v105 = 2;

unsigned int v25 (signed short v108, signed short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 5;
signed char v111 = 1;
signed int v110 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned int v113, unsigned short v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = 3;
unsigned short v116 = 5;
unsigned int v115 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
unsigned int v120 = 3U;
unsigned int v119 = 3U;
signed int v118 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
