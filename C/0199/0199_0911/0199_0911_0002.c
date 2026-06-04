#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
unsigned short v5 (unsigned short, signed int, unsigned int);
unsigned short (*v6) (unsigned short, signed int, unsigned int) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (signed int, signed char);
extern unsigned char (*v12) (signed int, signed char);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v15 (signed int, unsigned char);
extern unsigned short (*v16) (signed int, unsigned char);
extern signed char v17 (signed char, unsigned char);
extern signed char (*v18) (signed char, unsigned char);
extern unsigned int v19 (signed char, signed int, signed char);
extern unsigned int (*v20) (signed char, signed int, signed char);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed short v23 (unsigned int, signed int, signed int, unsigned int);
extern signed short (*v24) (unsigned int, signed int, signed int, unsigned int);
extern signed int v25 (signed short);
extern signed int (*v26) (signed short);
extern unsigned char v27 (signed short, unsigned short);
extern unsigned char (*v28) (signed short, unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v86 = 7;
signed short v85 = 0;
unsigned char v84 = 0;

unsigned short v5 (unsigned short v87, signed int v88, unsigned int v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed char v92 = -2;
unsigned int v91 = 5U;
signed short v90 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
