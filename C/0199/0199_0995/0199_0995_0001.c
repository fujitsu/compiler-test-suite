#include <stdlib.h>
extern void v1 (signed char, signed char, unsigned short, signed short);
extern void (*v2) (signed char, signed char, unsigned short, signed short);
extern unsigned int v5 (signed int, signed int, unsigned int, signed short);
extern unsigned int (*v6) (signed int, signed int, unsigned int, signed short);
extern unsigned int v7 (signed int, unsigned int, unsigned char);
extern unsigned int (*v8) (signed int, unsigned int, unsigned char);
extern unsigned short v9 (signed int, signed char, signed int);
extern unsigned short (*v10) (signed int, signed char, signed int);
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned char v15 (unsigned short, signed char, signed int);
extern unsigned char (*v16) (unsigned short, signed char, signed int);
signed char v17 (signed int);
signed char (*v18) (signed int) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (unsigned int, unsigned int, signed int);
extern unsigned int (*v22) (unsigned int, unsigned int, signed int);
extern signed int v23 (signed char, unsigned int, signed int, signed short);
extern signed int (*v24) (signed char, unsigned int, signed int, signed short);
extern unsigned short v25 (unsigned int, unsigned int, unsigned char);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned char);
extern unsigned int v27 (unsigned int, signed int, signed int);
extern unsigned int (*v28) (unsigned int, signed int, signed int);
extern unsigned short v29 (unsigned int, unsigned short, signed char, signed int);
extern unsigned short (*v30) (unsigned int, unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v55 = -4;
unsigned int v54 = 5U;
unsigned char v53 = 7;

signed char v17 (signed int v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
unsigned int v59 = 6U;
signed int v58 = -2;
signed short v57 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
