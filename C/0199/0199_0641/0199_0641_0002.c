#include <stdlib.h>
extern signed short v1 (signed char, unsigned short, signed short, signed char);
extern signed short (*v2) (signed char, unsigned short, signed short, signed char);
unsigned char v3 (unsigned int, unsigned short, signed short);
unsigned char (*v4) (unsigned int, unsigned short, signed short) = v3;
extern signed char v5 (signed char, unsigned short);
extern signed char (*v6) (signed char, unsigned short);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (unsigned char, unsigned short, unsigned int);
extern unsigned int (*v10) (unsigned char, unsigned short, unsigned int);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned int v13 (signed int, unsigned int, signed char);
extern unsigned int (*v14) (signed int, unsigned int, signed char);
extern signed int v15 (signed int);
extern signed int (*v16) (signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed short v19 (signed char);
extern signed short (*v20) (signed char);
extern signed int v21 (unsigned char, unsigned int, signed int);
extern signed int (*v22) (unsigned char, unsigned int, signed int);
extern unsigned char v25 (unsigned int, signed int);
extern unsigned char (*v26) (unsigned int, signed int);
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
extern unsigned short v29 (unsigned short, signed int, signed short);
extern unsigned short (*v30) (unsigned short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v91 = 6;
unsigned short v90 = 4;
unsigned char v89 = 0;

unsigned char v3 (unsigned int v92, unsigned short v93, signed short v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = -1;
unsigned int v96 = 3U;
signed short v95 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
