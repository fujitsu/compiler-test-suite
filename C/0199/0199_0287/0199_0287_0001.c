#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int, signed char, signed int);
extern signed char (*v2) (unsigned int, unsigned int, signed char, signed int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed short v5 (signed int, signed short);
extern signed short (*v6) (signed int, signed short);
signed short v7 (signed short);
signed short (*v8) (signed short) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (signed char);
extern unsigned char (*v12) (signed char);
extern signed int v13 (signed int);
extern signed int (*v14) (signed int);
extern unsigned short v15 (unsigned int, signed short, unsigned short, signed char);
extern unsigned short (*v16) (unsigned int, signed short, unsigned short, signed char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed int, unsigned char, signed char, unsigned int);
extern unsigned char (*v20) (signed int, unsigned char, signed char, unsigned int);
extern signed int v21 (signed int, signed char, unsigned char, unsigned char);
extern signed int (*v22) (signed int, signed char, unsigned char, unsigned char);
extern unsigned int v23 (unsigned char, unsigned int, unsigned short, signed int);
extern unsigned int (*v24) (unsigned char, unsigned int, unsigned short, signed int);
extern signed short v25 (signed short, unsigned char, signed short, signed int);
extern signed short (*v26) (signed short, unsigned char, signed short, signed int);
extern void v27 (signed short, signed char, signed int);
extern void (*v28) (signed short, signed char, signed int);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v55 = -4;
signed short v54 = 3;
signed short v53 = 1;

signed short v7 (signed short v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
signed short v59 = 0;
signed short v58 = 2;
signed char v57 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
