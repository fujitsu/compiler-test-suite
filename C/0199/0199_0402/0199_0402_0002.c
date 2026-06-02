#include <stdlib.h>
extern signed short v1 (unsigned short);
extern signed short (*v2) (unsigned short);
extern void v3 (unsigned char, signed char, signed char);
extern void (*v4) (unsigned char, signed char, signed char);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned int v7 (unsigned int, unsigned short);
extern unsigned int (*v8) (unsigned int, unsigned short);
extern signed char v9 (unsigned int, signed short, unsigned char);
extern signed char (*v10) (unsigned int, signed short, unsigned char);
extern void v11 (unsigned int, signed char, signed char, signed short);
extern void (*v12) (unsigned int, signed char, signed char, signed short);
extern unsigned char v13 (unsigned char, signed int, unsigned short, signed char);
extern unsigned char (*v14) (unsigned char, signed int, unsigned short, signed char);
extern unsigned char v15 (signed int, signed char, signed char, signed char);
extern unsigned char (*v16) (signed int, signed char, signed char, signed char);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
signed char v19 (signed short, unsigned int);
signed char (*v20) (signed short, unsigned int) = v19;
extern signed short v21 (unsigned int, signed char, unsigned int, unsigned short);
extern signed short (*v22) (unsigned int, signed char, unsigned int, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (signed int, unsigned int, signed char);
extern void (*v26) (signed int, unsigned int, signed char);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (unsigned int, signed int);
extern unsigned char (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v92 = 5;
unsigned int v91 = 4U;
signed int v90 = 0;

signed char v19 (signed short v93, unsigned int v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned char v97 = 7;
unsigned char v96 = 2;
signed int v95 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
