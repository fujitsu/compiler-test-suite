#include <stdlib.h>
extern signed char v3 (unsigned int, unsigned char, signed short);
extern signed char (*v4) (unsigned int, unsigned char, signed short);
extern unsigned int v5 (unsigned int, signed char, signed int);
extern unsigned int (*v6) (unsigned int, signed char, signed int);
extern signed short v7 (signed int, signed short, unsigned char, unsigned char);
extern signed short (*v8) (signed int, signed short, unsigned char, unsigned char);
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
extern signed int v11 (signed short, unsigned short, signed short, unsigned char);
extern signed int (*v12) (signed short, unsigned short, signed short, unsigned char);
extern void v13 (signed char, signed int, signed char);
extern void (*v14) (signed char, signed int, signed char);
extern unsigned short v15 (unsigned char, signed int);
extern unsigned short (*v16) (unsigned char, signed int);
extern signed short v17 (unsigned char, unsigned short);
extern signed short (*v18) (unsigned char, unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (signed int, unsigned short);
extern unsigned int (*v22) (signed int, unsigned short);
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
extern void v25 (void);
extern void (*v26) (void);
unsigned int v27 (signed char, signed int, signed char);
unsigned int (*v28) (signed char, signed int, signed char) = v27;
extern signed int v29 (unsigned short, unsigned int);
extern signed int (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v90 = 0U;
unsigned int v89 = 1U;
unsigned char v88 = 3;

unsigned int v27 (signed char v91, signed int v92, signed char v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 4U;
unsigned int v95 = 2U;
signed short v94 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
