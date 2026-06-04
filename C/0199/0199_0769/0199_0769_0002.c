#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char, signed char);
extern unsigned char (*v2) (unsigned short, signed char, signed char);
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
extern void v5 (signed int, signed int, unsigned short, signed int);
extern void (*v6) (signed int, signed int, unsigned short, signed int);
extern unsigned short v7 (signed int, signed int);
extern unsigned short (*v8) (signed int, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed short v11 (signed int, signed short, unsigned short);
extern signed short (*v12) (signed int, signed short, unsigned short);
extern signed char v13 (unsigned short, unsigned short, signed char, unsigned short);
extern signed char (*v14) (unsigned short, unsigned short, signed char, unsigned short);
extern unsigned char v15 (signed int);
extern unsigned char (*v16) (signed int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned int v19 (signed char, unsigned int);
extern unsigned int (*v20) (signed char, unsigned int);
extern signed int v21 (signed int, unsigned char, signed int);
extern signed int (*v22) (signed int, unsigned char, signed int);
extern unsigned short v25 (unsigned short, signed int, unsigned char, signed int);
extern unsigned short (*v26) (unsigned short, signed int, unsigned char, signed int);
extern unsigned short v27 (unsigned char, signed char, signed short, signed short);
extern unsigned short (*v28) (unsigned char, signed char, signed short, signed short);
unsigned char v29 (unsigned short, unsigned short);
unsigned char (*v30) (unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v93 = 2;
unsigned int v92 = 3U;
unsigned char v91 = 5;

unsigned char v29 (unsigned short v94, unsigned short v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = -3;
unsigned short v97 = 6;
signed short v96 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
