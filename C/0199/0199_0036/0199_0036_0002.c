#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern signed char v5 (signed int);
extern signed char (*v6) (signed int);
extern unsigned char v7 (unsigned int, signed short);
extern unsigned char (*v8) (unsigned int, signed short);
extern signed char v9 (unsigned short, signed char);
extern signed char (*v10) (unsigned short, signed char);
extern void v11 (signed short, unsigned char);
extern void (*v12) (signed short, unsigned char);
extern unsigned short v13 (signed short, unsigned int, unsigned short, signed short);
extern unsigned short (*v14) (signed short, unsigned int, unsigned short, signed short);
extern unsigned short v15 (unsigned int, unsigned char, unsigned char);
extern unsigned short (*v16) (unsigned int, unsigned char, unsigned char);
extern signed int v17 (unsigned char, unsigned int, unsigned int, signed char);
extern signed int (*v18) (unsigned char, unsigned int, unsigned int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (signed short, unsigned short, unsigned char, signed int);
extern signed char (*v22) (signed short, unsigned short, unsigned char, signed int);
extern void v23 (unsigned char);
extern void (*v24) (unsigned char);
extern unsigned int v25 (signed char, signed short, unsigned int);
extern unsigned int (*v26) (signed char, signed short, unsigned int);
unsigned int v29 (unsigned int, unsigned int);
unsigned int (*v30) (unsigned int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v73 = 2U;
signed int v72 = 3;
signed short v71 = -4;

unsigned int v29 (unsigned int v74, unsigned int v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 6U;
unsigned char v77 = 1;
unsigned short v76 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
