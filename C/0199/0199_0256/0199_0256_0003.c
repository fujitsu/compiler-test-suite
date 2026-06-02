#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
signed int v3 (unsigned short, signed short);
signed int (*v4) (unsigned short, signed short) = v3;
extern unsigned int v5 (signed char, signed short, signed char, unsigned int);
extern unsigned int (*v6) (signed char, signed short, signed char, unsigned int);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (signed char, unsigned char);
extern void (*v10) (signed char, unsigned char);
extern unsigned int v11 (signed int, unsigned short);
extern unsigned int (*v12) (signed int, unsigned short);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
extern unsigned short v21 (unsigned char, signed short);
extern unsigned short (*v22) (unsigned char, signed short);
extern signed short v23 (unsigned int);
extern signed short (*v24) (unsigned int);
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
extern signed char v27 (unsigned short);
extern signed char (*v28) (unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v117 = -4;
signed short v116 = -2;
signed int v115 = 1;

signed int v3 (unsigned short v118, signed short v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = -3;
signed char v121 = -1;
unsigned char v120 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
