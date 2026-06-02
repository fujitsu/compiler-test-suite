#include <stdlib.h>
extern unsigned int v1 (signed char, signed int, signed char);
extern unsigned int (*v2) (signed char, signed int, signed char);
extern unsigned char v3 (signed short, signed char, signed int, signed short);
extern unsigned char (*v4) (signed short, signed char, signed int, signed short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned short v9 (unsigned short, unsigned short);
extern unsigned short (*v10) (unsigned short, unsigned short);
extern signed int v11 (unsigned int);
extern signed int (*v12) (unsigned int);
extern signed int v13 (signed int, signed char, signed short);
extern signed int (*v14) (signed int, signed char, signed short);
unsigned int v15 (signed int, unsigned short, unsigned int);
unsigned int (*v16) (signed int, unsigned short, unsigned int) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned short v19 (signed short, unsigned int, signed int, unsigned char);
extern unsigned short (*v20) (signed short, unsigned int, signed int, unsigned char);
extern unsigned int v21 (signed short, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short);
extern unsigned int v23 (signed int, signed char, unsigned int, unsigned short);
extern unsigned int (*v24) (signed int, signed char, unsigned int, unsigned short);
extern unsigned short v25 (unsigned char, unsigned char, signed char, unsigned char);
extern unsigned short (*v26) (unsigned char, unsigned char, signed char, unsigned char);
extern signed int v27 (unsigned short, signed short, unsigned int, unsigned char);
extern signed int (*v28) (unsigned short, signed short, unsigned int, unsigned char);
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v116 = 1;
signed char v115 = -4;
signed int v114 = -3;

unsigned int v15 (signed int v117, unsigned short v118, unsigned int v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = 0;
signed char v121 = 0;
signed int v120 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
