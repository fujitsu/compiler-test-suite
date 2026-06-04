#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (signed short, unsigned char, signed short);
extern signed int (*v6) (signed short, unsigned char, signed short);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned int);
extern unsigned int (*v10) (unsigned short, unsigned int);
extern signed char v11 (signed char, signed char, unsigned int);
extern signed char (*v12) (signed char, signed char, unsigned int);
extern void v13 (signed int, unsigned char, unsigned char, signed int);
extern void (*v14) (signed int, unsigned char, unsigned char, signed int);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (signed short, signed short, unsigned short);
extern signed short (*v18) (signed short, signed short, unsigned short);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
signed char v25 (unsigned int);
signed char (*v26) (unsigned int) = v25;
extern signed short v29 (unsigned int, signed char, unsigned char, signed int);
extern signed short (*v30) (unsigned int, signed char, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v53 = -4;
unsigned int v52 = 4U;
unsigned short v51 = 2;

signed char v25 (unsigned int v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
signed short v57 = 3;
signed char v56 = 0;
signed char v55 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
