#include <stdlib.h>
extern signed short v1 (signed int, signed char, unsigned short);
extern signed short (*v2) (signed int, signed char, unsigned short);
extern unsigned int v3 (unsigned char, unsigned int);
extern unsigned int (*v4) (unsigned char, unsigned int);
unsigned int v7 (signed short);
unsigned int (*v8) (signed short) = v7;
extern signed short v11 (unsigned char, signed char, unsigned char);
extern signed short (*v12) (unsigned char, signed char, unsigned char);
extern unsigned short v13 (unsigned char, unsigned short);
extern unsigned short (*v14) (unsigned char, unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned char v17 (signed short, unsigned char, signed int, unsigned char);
extern unsigned char (*v18) (signed short, unsigned char, signed int, unsigned char);
extern unsigned short v19 (signed char, signed char, unsigned short, unsigned char);
extern unsigned short (*v20) (signed char, signed char, unsigned short, unsigned char);
extern signed short v21 (unsigned int, unsigned char, signed int);
extern signed short (*v22) (unsigned int, unsigned char, signed int);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v73 = 6;
unsigned int v72 = 0U;
unsigned int v71 = 1U;

unsigned int v7 (signed short v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
unsigned char v77 = 5;
signed char v76 = 3;
signed char v75 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
