#include <stdlib.h>
extern unsigned int v1 (signed char, signed char, unsigned int, signed short);
extern unsigned int (*v2) (signed char, signed char, unsigned int, signed short);
extern void v3 (unsigned short, signed short);
extern void (*v4) (unsigned short, signed short);
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
signed int v11 (signed short);
signed int (*v12) (signed short) = v11;
extern signed int v13 (unsigned short, unsigned int, unsigned int);
extern signed int (*v14) (unsigned short, unsigned int, unsigned int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern signed char v19 (unsigned int, unsigned int, unsigned short);
extern signed char (*v20) (unsigned int, unsigned int, unsigned short);
extern unsigned short v21 (signed short, signed char, signed char, signed int);
extern unsigned short (*v22) (signed short, signed char, signed char, signed int);
extern unsigned char v23 (signed short, signed int);
extern unsigned char (*v24) (signed short, signed int);
extern unsigned short v27 (unsigned int, signed char, unsigned int);
extern unsigned short (*v28) (unsigned int, signed char, unsigned int);
extern unsigned short v29 (unsigned short, unsigned short, unsigned short);
extern unsigned short (*v30) (unsigned short, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v56 = 0;
unsigned int v55 = 0U;
unsigned char v54 = 1;

signed int v11 (signed short v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = 0;
unsigned char v59 = 0;
signed char v58 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
