#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern unsigned short v3 (unsigned short, unsigned short, unsigned char);
extern unsigned short (*v4) (unsigned short, unsigned short, unsigned char);
extern unsigned char v5 (unsigned char, unsigned int, unsigned char);
extern unsigned char (*v6) (unsigned char, unsigned int, unsigned char);
unsigned int v7 (unsigned char, unsigned char, signed short, signed int);
unsigned int (*v8) (unsigned char, unsigned char, signed short, signed int) = v7;
extern signed int v9 (unsigned char, signed short);
extern signed int (*v10) (unsigned char, signed short);
extern unsigned char v13 (unsigned char, signed short, signed short, signed int);
extern unsigned char (*v14) (unsigned char, signed short, signed short, signed int);
extern signed short v15 (signed int, signed char, signed int, signed short);
extern signed short (*v16) (signed int, signed char, signed int, signed short);
extern signed int v17 (unsigned int, signed char);
extern signed int (*v18) (unsigned int, signed char);
extern void v19 (signed int, signed int);
extern void (*v20) (signed int, signed int);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned char v25 (signed int, unsigned int, unsigned short);
extern unsigned char (*v26) (signed int, unsigned int, unsigned short);
extern unsigned short v27 (signed short);
extern unsigned short (*v28) (signed short);
extern unsigned int v29 (signed int);
extern unsigned int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v92 = 2U;
unsigned char v91 = 3;
unsigned int v90 = 2U;

unsigned int v7 (unsigned char v93, unsigned char v94, signed short v95, signed int v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = -4;
signed short v98 = -1;
unsigned int v97 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
