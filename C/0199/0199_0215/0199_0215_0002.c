#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed short);
extern unsigned char (*v2) (unsigned char, signed short);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned int v5 (signed char, unsigned short, signed char, unsigned char);
extern unsigned int (*v6) (signed char, unsigned short, signed char, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed char, unsigned short, unsigned char);
extern signed short (*v12) (signed char, unsigned short, unsigned char);
signed int v13 (unsigned short, signed int, signed char, signed short);
signed int (*v14) (unsigned short, signed int, signed char, signed short) = v13;
extern signed int v15 (unsigned int, unsigned int, signed short, unsigned short);
extern signed int (*v16) (unsigned int, unsigned int, signed short, unsigned short);
extern signed short v19 (unsigned int, unsigned int, unsigned short, signed int);
extern signed short (*v20) (unsigned int, unsigned int, unsigned short, signed int);
extern signed int v21 (unsigned int, signed int, signed short, signed int);
extern signed int (*v22) (unsigned int, signed int, signed short, signed int);
extern void v23 (signed char);
extern void (*v24) (signed char);
extern unsigned int v27 (unsigned char, unsigned int, unsigned short, unsigned int);
extern unsigned int (*v28) (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed int v29 (unsigned int, unsigned char, unsigned char);
extern signed int (*v30) (unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v71 = -2;
signed int v70 = -4;
signed short v69 = 2;

signed int v13 (unsigned short v72, signed int v73, signed char v74, signed short v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 0;
signed int v77 = 0;
unsigned short v76 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
