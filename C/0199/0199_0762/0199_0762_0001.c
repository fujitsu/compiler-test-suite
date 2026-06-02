#include <stdlib.h>
extern unsigned int v1 (unsigned int);
extern unsigned int (*v2) (unsigned int);
extern unsigned short v3 (unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned short, unsigned short);
signed char v5 (signed char, signed int);
signed char (*v6) (signed char, signed int) = v5;
extern void v7 (signed short, signed short, unsigned int, unsigned char);
extern void (*v8) (signed short, signed short, unsigned int, unsigned char);
extern unsigned short v9 (unsigned int, unsigned char, unsigned int);
extern unsigned short (*v10) (unsigned int, unsigned char, unsigned int);
extern void v11 (signed short);
extern void (*v12) (signed short);
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
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
signed int v74 = 1;
signed int v73 = -4;
signed char v72 = -4;

signed char v5 (signed char v75, signed int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 4;
signed char v78 = -2;
signed int v77 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
