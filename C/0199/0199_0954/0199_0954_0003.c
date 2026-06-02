#include <stdlib.h>
extern signed int v1 (unsigned char, signed short);
extern signed int (*v2) (unsigned char, signed short);
unsigned int v3 (signed int, unsigned short, signed char, unsigned char);
unsigned int (*v4) (signed int, unsigned short, signed char, unsigned char) = v3;
extern void v5 (signed short, signed short, unsigned char);
extern void (*v6) (signed short, signed short, unsigned char);
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
extern signed int v9 (unsigned int, unsigned char, unsigned char, unsigned short);
extern signed int (*v10) (unsigned int, unsigned char, unsigned char, unsigned short);
extern unsigned short v11 (unsigned char, unsigned char, signed int);
extern unsigned short (*v12) (unsigned char, unsigned char, signed int);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v15 (signed char, signed int, unsigned int, unsigned short);
extern unsigned short (*v16) (signed char, signed int, unsigned int, unsigned short);
extern signed char v17 (unsigned int, unsigned char, unsigned short, signed short);
extern signed char (*v18) (unsigned int, unsigned char, unsigned short, signed short);
extern unsigned char v19 (signed int, unsigned char);
extern unsigned char (*v20) (signed int, unsigned char);
extern unsigned int v21 (unsigned char, signed short);
extern unsigned int (*v22) (unsigned char, signed short);
extern unsigned short v23 (unsigned short);
extern unsigned short (*v24) (unsigned short);
extern signed short v25 (signed char, signed short);
extern signed short (*v26) (signed char, signed short);
extern signed short v27 (unsigned short, unsigned char);
extern signed short (*v28) (unsigned short, unsigned char);
extern unsigned short v29 (signed char, unsigned int);
extern unsigned short (*v30) (signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v112 = 5U;
signed int v111 = 0;
signed char v110 = 3;

unsigned int v3 (signed int v113, unsigned short v114, signed char v115, unsigned char v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = -1;
signed int v118 = 3;
signed int v117 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
