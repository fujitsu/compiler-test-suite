#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (unsigned char, unsigned char, unsigned short);
extern signed short (*v4) (unsigned char, unsigned char, unsigned short);
signed char v5 (signed short, signed short);
signed char (*v6) (signed short, signed short) = v5;
extern void v7 (signed int, unsigned int, signed char, unsigned short);
extern void (*v8) (signed int, unsigned int, signed char, unsigned short);
extern signed short v9 (unsigned int, unsigned char);
extern signed short (*v10) (unsigned int, unsigned char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned short v13 (signed short, signed char);
extern unsigned short (*v14) (signed short, signed char);
extern unsigned short v15 (unsigned int);
extern unsigned short (*v16) (unsigned int);
extern signed int v17 (unsigned char, unsigned int, unsigned short);
extern signed int (*v18) (unsigned char, unsigned int, unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (unsigned short, signed short);
extern signed int (*v22) (unsigned short, signed short);
extern void v23 (signed char, unsigned char, unsigned short);
extern void (*v24) (signed char, unsigned char, unsigned short);
extern unsigned short v25 (signed char, unsigned int);
extern unsigned short (*v26) (signed char, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v87 = 4;
unsigned char v86 = 7;
signed short v85 = 1;

signed char v5 (signed short v88, signed short v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed char v92 = 2;
unsigned int v91 = 4U;
signed char v90 = -1;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}
