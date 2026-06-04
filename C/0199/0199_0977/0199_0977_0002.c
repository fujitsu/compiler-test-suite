#include <stdlib.h>
unsigned char v3 (signed char, unsigned int, signed char);
unsigned char (*v4) (signed char, unsigned int, signed char) = v3;
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
extern unsigned int v13 (unsigned char, unsigned short, signed int, signed int);
extern unsigned int (*v14) (unsigned char, unsigned short, signed int, signed int);
extern unsigned short v15 (signed short, signed char);
extern unsigned short (*v16) (signed short, signed char);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (signed short);
extern void (*v22) (signed short);
extern unsigned short v25 (unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned short, unsigned int);
extern signed int v27 (unsigned int, unsigned int, unsigned char);
extern signed int (*v28) (unsigned int, unsigned int, unsigned char);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v90 = 3;
signed int v89 = 2;
unsigned char v88 = 6;

unsigned char v3 (signed char v91, unsigned int v92, signed char v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = -2;
unsigned int v95 = 0U;
unsigned char v94 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
