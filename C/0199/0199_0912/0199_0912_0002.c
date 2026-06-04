#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned int (*v2) (unsigned int, signed char, unsigned char, unsigned char);
extern signed short v3 (unsigned int, unsigned int, unsigned char);
extern signed short (*v4) (unsigned int, unsigned int, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed int v9 (signed short, unsigned short, signed int);
extern signed int (*v10) (signed short, unsigned short, signed int);
extern void v11 (unsigned int, signed char, signed char, signed int);
extern void (*v12) (unsigned int, signed char, signed char, signed int);
extern signed short v13 (unsigned short, signed int, unsigned char, signed int);
extern signed short (*v14) (unsigned short, signed int, unsigned char, signed int);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
unsigned int v17 (signed char, signed char, unsigned short, signed int);
unsigned int (*v18) (signed char, signed char, unsigned short, signed int) = v17;
extern void v19 (signed int, unsigned char, unsigned int);
extern void (*v20) (signed int, unsigned char, unsigned int);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern unsigned char v23 (unsigned int, signed short, signed char);
extern unsigned char (*v24) (unsigned int, signed short, signed char);
extern unsigned char v25 (unsigned char, unsigned short, signed short, unsigned short);
extern unsigned char (*v26) (unsigned char, unsigned short, signed short, unsigned short);
extern signed int v27 (unsigned int, unsigned short, unsigned int, unsigned char);
extern signed int (*v28) (unsigned int, unsigned short, unsigned int, unsigned char);
extern signed char v29 (signed short);
extern signed char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v90 = 1;
unsigned short v89 = 1;
unsigned short v88 = 2;

unsigned int v17 (signed char v91, signed char v92, unsigned short v93, signed int v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned int v97 = 6U;
unsigned int v96 = 2U;
unsigned short v95 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
