#include <stdlib.h>
extern void v1 (signed char, signed char, signed int, unsigned short);
extern void (*v2) (signed char, signed char, signed int, unsigned short);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (unsigned short, unsigned int, signed short, unsigned short);
extern void (*v10) (unsigned short, unsigned int, signed short, unsigned short);
signed short v11 (unsigned short);
signed short (*v12) (unsigned short) = v11;
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern signed short v15 (signed int, signed char, signed int);
extern signed short (*v16) (signed int, signed char, signed int);
extern unsigned int v17 (signed short, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v18) (signed short, unsigned short, unsigned int, unsigned char);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed char v23 (signed char, unsigned char, unsigned char, unsigned char);
extern signed char (*v24) (signed char, unsigned char, unsigned char, unsigned char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v94 = 7U;
signed short v93 = 3;
signed char v92 = 2;

signed short v11 (unsigned short v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
signed short v98 = -2;
signed char v97 = -4;
unsigned int v96 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
