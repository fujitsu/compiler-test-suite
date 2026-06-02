#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed short v3 (unsigned char, unsigned char, unsigned char);
extern signed short (*v4) (unsigned char, unsigned char, unsigned char);
signed char v5 (unsigned int, signed char, unsigned char);
signed char (*v6) (unsigned int, signed char, unsigned char) = v5;
extern unsigned int v7 (signed int);
extern unsigned int (*v8) (signed int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed int v11 (signed short, unsigned short);
extern signed int (*v12) (signed short, unsigned short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
extern unsigned int v17 (signed int, unsigned short, unsigned char);
extern unsigned int (*v18) (signed int, unsigned short, unsigned char);
extern signed char v19 (signed char, unsigned char);
extern signed char (*v20) (signed char, unsigned char);
extern void v23 (unsigned int);
extern void (*v24) (unsigned int);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed char v29 (unsigned short, signed short, signed int);
extern signed char (*v30) (unsigned short, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v117 = 2;
signed char v116 = -4;
signed char v115 = -2;

signed char v5 (unsigned int v118, signed char v119, unsigned char v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned short v123 = 1;
unsigned char v122 = 1;
signed int v121 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
