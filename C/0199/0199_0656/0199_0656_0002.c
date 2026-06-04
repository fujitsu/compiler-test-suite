#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
signed short v3 (signed short, signed int, unsigned char);
signed short (*v4) (signed short, signed int, unsigned char) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (signed char, unsigned short);
extern signed short (*v8) (signed char, unsigned short);
extern unsigned short v11 (signed char, signed char, signed short);
extern unsigned short (*v12) (signed char, signed char, signed short);
extern unsigned short v13 (unsigned char, signed int, unsigned char, unsigned char);
extern unsigned short (*v14) (unsigned char, signed int, unsigned char, unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (signed int, signed char, signed char, unsigned short);
extern void (*v18) (signed int, signed char, signed char, unsigned short);
extern void v19 (signed int, unsigned char, unsigned char, unsigned int);
extern void (*v20) (signed int, unsigned char, unsigned char, unsigned int);
extern signed int v21 (unsigned int, signed short, signed short, unsigned short);
extern signed int (*v22) (unsigned int, signed short, signed short, unsigned short);
extern signed short v23 (unsigned char, signed char, signed short, unsigned char);
extern signed short (*v24) (unsigned char, signed char, signed short, unsigned char);
extern unsigned char v25 (signed int, unsigned char, signed char, signed int);
extern unsigned char (*v26) (signed int, unsigned char, signed char, signed int);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned short v29 (unsigned short, signed short, signed int, unsigned int);
extern unsigned short (*v30) (unsigned short, signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v86 = 7U;
unsigned short v85 = 4;
unsigned int v84 = 2U;

signed short v3 (signed short v87, signed int v88, unsigned char v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 7;
signed int v91 = 1;
signed short v90 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
