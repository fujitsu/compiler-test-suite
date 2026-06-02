#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
signed char v5 (unsigned int);
signed char (*v6) (unsigned int) = v5;
extern unsigned short v7 (unsigned char, unsigned char);
extern unsigned short (*v8) (unsigned char, unsigned char);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern unsigned char v11 (signed char, signed char, signed int, unsigned short);
extern unsigned char (*v12) (signed char, signed char, signed int, unsigned short);
extern unsigned short v13 (signed int);
extern unsigned short (*v14) (signed int);
extern void v17 (signed int, signed int);
extern void (*v18) (signed int, signed int);
extern signed int v19 (signed char, signed int, signed short, unsigned int);
extern signed int (*v20) (signed char, signed int, signed short, unsigned int);
extern signed char v21 (unsigned int, unsigned int, signed char, signed short);
extern signed char (*v22) (unsigned int, unsigned int, signed char, signed short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned char v25 (unsigned int, signed int, signed short, unsigned int);
extern unsigned char (*v26) (unsigned int, signed int, signed short, unsigned int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (unsigned char, signed short, unsigned int, signed short);
extern unsigned char (*v30) (unsigned char, signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v94 = 2;
signed char v93 = -1;
unsigned char v92 = 3;

signed char v5 (unsigned int v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 2;
unsigned char v97 = 2;
signed int v96 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
