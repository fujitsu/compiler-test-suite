#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern unsigned short v5 (unsigned int, unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned int, unsigned int, unsigned short);
extern void v7 (signed int, unsigned char);
extern void (*v8) (signed int, unsigned char);
extern signed int v9 (unsigned char, unsigned short, signed char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned short, signed char, unsigned int);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
unsigned int v13 (unsigned char, signed short, unsigned short);
unsigned int (*v14) (unsigned char, signed short, unsigned short) = v13;
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern signed int v17 (unsigned short, signed short);
extern signed int (*v18) (unsigned short, signed short);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
extern signed char v21 (signed short, unsigned char, signed char, unsigned char);
extern signed char (*v22) (signed short, unsigned char, signed char, unsigned char);
extern unsigned int v25 (signed short, unsigned int, signed int, unsigned short);
extern unsigned int (*v26) (signed short, unsigned int, signed int, unsigned short);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v112 = 5U;
signed short v111 = 0;
unsigned char v110 = 2;

unsigned char v15 (void)
{
{
for (;;) {
unsigned int v115 = 0U;
unsigned char v114 = 4;
signed short v113 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v116, signed short v117, unsigned short v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = 1;
signed short v120 = -1;
unsigned int v119 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
