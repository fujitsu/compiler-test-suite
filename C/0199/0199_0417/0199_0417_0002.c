#include <stdlib.h>
extern unsigned int v1 (signed short, signed char, unsigned short, signed int);
extern unsigned int (*v2) (signed short, signed char, unsigned short, signed int);
extern signed char v3 (signed short, signed short, unsigned short);
extern signed char (*v4) (signed short, signed short, unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned int v7 (signed char, signed char, signed char, signed short);
extern unsigned int (*v8) (signed char, signed char, signed char, signed short);
extern unsigned int v9 (signed char);
extern unsigned int (*v10) (signed char);
unsigned short v11 (signed int, signed int);
unsigned short (*v12) (signed int, signed int) = v11;
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern unsigned char v15 (signed int, unsigned char, unsigned short, signed int);
extern unsigned char (*v16) (signed int, unsigned char, unsigned short, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed char v19 (unsigned int, unsigned short, unsigned short, unsigned short);
extern signed char (*v20) (unsigned int, unsigned short, unsigned short, unsigned short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (signed char, signed int, signed int);
extern unsigned int (*v24) (signed char, signed int, signed int);
extern unsigned int v25 (unsigned short, unsigned short, signed char, unsigned int);
extern unsigned int (*v26) (unsigned short, unsigned short, signed char, unsigned int);
extern unsigned char v27 (unsigned char, unsigned char, unsigned int);
extern unsigned char (*v28) (unsigned char, unsigned char, unsigned int);
extern unsigned int v29 (signed char, signed int, unsigned int, unsigned char);
extern unsigned int (*v30) (signed char, signed int, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v96 = 7;
unsigned char v95 = 3;
unsigned char v94 = 7;

unsigned short v11 (signed int v97, signed int v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 5;
unsigned int v100 = 7U;
signed char v99 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
