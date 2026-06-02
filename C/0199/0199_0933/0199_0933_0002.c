#include <stdlib.h>
extern void v1 (unsigned short, signed int, unsigned char);
extern void (*v2) (unsigned short, signed int, unsigned char);
extern void v3 (unsigned char, unsigned int, unsigned short, signed char);
extern void (*v4) (unsigned char, unsigned int, unsigned short, signed char);
extern signed int v7 (signed short, signed short, signed short);
extern signed int (*v8) (signed short, signed short, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
unsigned int v15 (unsigned char, signed char, unsigned int);
unsigned int (*v16) (unsigned char, signed char, unsigned int) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned short v21 (signed short, unsigned char);
extern unsigned short (*v22) (signed short, unsigned char);
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned short v29 (unsigned short, unsigned int);
extern unsigned short (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v72 = 7;
signed char v71 = 0;
signed char v70 = 2;

unsigned int v15 (unsigned char v73, signed char v74, unsigned int v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = -4;
unsigned short v77 = 7;
unsigned char v76 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
