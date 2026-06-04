#include <stdlib.h>
extern void v1 (signed short, signed short);
extern void (*v2) (signed short, signed short);
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern unsigned short v5 (unsigned int, unsigned int);
extern unsigned short (*v6) (unsigned int, unsigned int);
extern signed int v7 (signed short, signed short, signed char, unsigned int);
extern signed int (*v8) (signed short, signed short, signed char, unsigned int);
extern signed int v9 (unsigned int, signed short, unsigned int);
extern signed int (*v10) (unsigned int, signed short, unsigned int);
extern unsigned short v11 (signed char, signed short, unsigned int, signed int);
extern unsigned short (*v12) (signed char, signed short, unsigned int, signed int);
extern unsigned int v13 (unsigned char, signed short, signed char);
extern unsigned int (*v14) (unsigned char, signed short, signed char);
signed char v15 (signed char);
signed char (*v16) (signed char) = v15;
extern signed int v17 (unsigned int, signed short, signed char);
extern signed int (*v18) (unsigned int, signed short, signed char);
extern signed char v19 (unsigned int, signed int);
extern signed char (*v20) (unsigned int, signed int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed short v23 (unsigned char, signed int, signed int, unsigned int);
extern signed short (*v24) (unsigned char, signed int, signed int, unsigned int);
extern signed short v25 (signed char, unsigned short);
extern signed short (*v26) (signed char, unsigned short);
extern unsigned short v27 (unsigned short, signed char, unsigned char);
extern unsigned short (*v28) (unsigned short, signed char, unsigned char);
extern signed char v29 (signed int, signed int, signed char, signed char);
extern signed char (*v30) (signed int, signed int, signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v76 = 6;
unsigned int v75 = 4U;
unsigned char v74 = 2;

signed char v15 (signed char v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 4;
unsigned int v79 = 5U;
unsigned int v78 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
