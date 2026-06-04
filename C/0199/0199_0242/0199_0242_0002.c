#include <stdlib.h>
extern signed short v1 (unsigned short, signed short, unsigned char);
extern signed short (*v2) (unsigned short, signed short, unsigned char);
extern signed int v3 (signed int, signed short, unsigned short);
extern signed int (*v4) (signed int, signed short, unsigned short);
extern void v5 (unsigned short, signed char);
extern void (*v6) (unsigned short, signed char);
extern unsigned int v7 (signed short, unsigned int);
extern unsigned int (*v8) (signed short, unsigned int);
unsigned short v9 (unsigned int, signed char);
unsigned short (*v10) (unsigned int, signed char) = v9;
extern signed char v11 (signed char, signed char);
extern signed char (*v12) (signed char, signed char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned short v15 (unsigned short);
extern unsigned short (*v16) (unsigned short);
extern signed int v17 (unsigned short, signed int);
extern signed int (*v18) (unsigned short, signed int);
extern signed char v19 (signed int, signed int);
extern signed char (*v20) (signed int, signed int);
extern unsigned int v21 (unsigned char, signed char, unsigned int);
extern unsigned int (*v22) (unsigned char, signed char, unsigned int);
extern void v23 (signed short, unsigned int, signed short);
extern void (*v24) (signed short, unsigned int, signed short);
extern signed char v25 (unsigned short, unsigned char, signed char, signed int);
extern signed char (*v26) (unsigned short, unsigned char, signed char, signed int);
extern signed short v29 (signed char, unsigned char);
extern signed short (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v91 = 1;
unsigned char v90 = 6;
unsigned int v89 = 4U;

unsigned short v9 (unsigned int v92, signed char v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 3U;
unsigned short v95 = 5;
signed int v94 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
