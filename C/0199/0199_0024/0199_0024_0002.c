#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern unsigned short v5 (signed int, signed short, signed int);
extern unsigned short (*v6) (signed int, signed short, signed int);
extern signed int v9 (unsigned char, unsigned char, signed int, signed short);
extern signed int (*v10) (unsigned char, unsigned char, signed int, signed short);
extern signed int v11 (signed short);
extern signed int (*v12) (signed short);
extern signed char v13 (signed char, unsigned char);
extern signed char (*v14) (signed char, unsigned char);
signed short v15 (unsigned short);
signed short (*v16) (unsigned short) = v15;
extern void v17 (unsigned char, unsigned short, unsigned short, unsigned short);
extern void (*v18) (unsigned char, unsigned short, unsigned short, unsigned short);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned char v23 (unsigned short, signed int, signed short, unsigned short);
extern unsigned char (*v24) (unsigned short, signed int, signed short, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (unsigned char, signed short);
extern signed char (*v30) (unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v82 = 2;
signed short v81 = 2;
unsigned int v80 = 0U;

signed short v15 (unsigned short v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 0;
unsigned int v85 = 5U;
unsigned int v84 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
