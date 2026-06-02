#include <stdlib.h>
extern unsigned int v1 (signed short, signed short);
extern unsigned int (*v2) (signed short, signed short);
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
extern signed int v5 (unsigned char, unsigned int);
extern signed int (*v6) (unsigned char, unsigned int);
extern void v7 (unsigned int, signed char);
extern void (*v8) (unsigned int, signed char);
signed int v9 (unsigned int, unsigned short, signed int);
signed int (*v10) (unsigned int, unsigned short, signed int) = v9;
extern unsigned short v11 (signed char, signed char);
extern unsigned short (*v12) (signed char, signed char);
extern signed char v13 (unsigned int, signed int, signed short);
extern signed char (*v14) (unsigned int, signed int, signed short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern void v19 (signed char, signed char, unsigned int, signed char);
extern void (*v20) (signed char, signed char, unsigned int, signed char);
extern signed char v21 (unsigned short, unsigned char, signed int, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char, signed int, unsigned char);
extern signed char v23 (unsigned int, unsigned char, signed short, unsigned char);
extern signed char (*v24) (unsigned int, unsigned char, signed short, unsigned char);
extern unsigned short v25 (unsigned char, unsigned char, signed char);
extern unsigned short (*v26) (unsigned char, unsigned char, signed char);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern signed int v29 (signed char);
extern signed int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v73 = 1;
signed short v72 = 2;
unsigned short v71 = 4;

signed int v9 (unsigned int v74, unsigned short v75, signed int v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 0U;
unsigned char v78 = 5;
unsigned char v77 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
