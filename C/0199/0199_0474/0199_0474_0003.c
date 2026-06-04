#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned char, unsigned char, signed short);
extern signed char (*v2) (unsigned char, unsigned char, unsigned char, signed short);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned char v5 (unsigned char, unsigned short, signed short);
extern unsigned char (*v6) (unsigned char, unsigned short, signed short);
extern signed short v7 (signed char, unsigned char);
extern signed short (*v8) (signed char, unsigned char);
extern signed char v9 (unsigned short, signed int, signed short);
extern signed char (*v10) (unsigned short, signed int, signed short);
extern unsigned short v11 (unsigned int, unsigned short, signed short);
extern unsigned short (*v12) (unsigned int, unsigned short, signed short);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
extern signed short v19 (unsigned int, signed char);
extern signed short (*v20) (unsigned int, signed char);
extern unsigned int v21 (unsigned int, signed short);
extern unsigned int (*v22) (unsigned int, signed short);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern void v25 (unsigned int);
extern void (*v26) (unsigned int);
signed short v27 (signed int, signed char);
signed short (*v28) (signed int, signed char) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v119 = 0;
unsigned short v118 = 1;
signed int v117 = -3;

signed short v27 (signed int v120, signed char v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = 0;
unsigned int v123 = 3U;
signed char v122 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
