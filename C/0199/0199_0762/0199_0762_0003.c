#include <stdlib.h>
extern unsigned int v1 (unsigned int);
extern unsigned int (*v2) (unsigned int);
extern unsigned short v3 (unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned short, unsigned short);
extern signed char v5 (signed char, signed int);
extern signed char (*v6) (signed char, signed int);
extern void v7 (signed short, signed short, unsigned int, unsigned char);
extern void (*v8) (signed short, signed short, unsigned int, unsigned char);
extern unsigned short v9 (unsigned int, unsigned char, unsigned int);
extern unsigned short (*v10) (unsigned int, unsigned char, unsigned int);
extern void v11 (signed short);
extern void (*v12) (signed short);
signed char v13 (unsigned char);
signed char (*v14) (unsigned char) = v13;
extern void v15 (signed int, unsigned int);
extern void (*v16) (signed int, unsigned int);
extern unsigned short v17 (signed short, unsigned int, unsigned char);
extern unsigned short (*v18) (signed short, unsigned int, unsigned char);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed int v27 (unsigned int);
extern signed int (*v28) (unsigned int);
extern unsigned int v29 (unsigned char, signed char);
extern unsigned int (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v108 = 6;
unsigned short v107 = 1;
unsigned int v106 = 4U;

signed char v13 (unsigned char v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 6;
unsigned char v111 = 7;
unsigned char v110 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
