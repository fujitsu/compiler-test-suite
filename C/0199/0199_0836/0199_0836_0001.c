#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned char);
extern unsigned int (*v2) (unsigned short, unsigned char);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned int v7 (unsigned short, unsigned char, unsigned short);
extern unsigned int (*v8) (unsigned short, unsigned char, unsigned short);
extern signed char v9 (signed char, signed char, signed char, signed char);
extern signed char (*v10) (signed char, signed char, signed char, signed char);
extern unsigned char v11 (unsigned int, unsigned int, signed char);
extern unsigned char (*v12) (unsigned int, unsigned int, signed char);
extern signed char v13 (unsigned short, signed char, signed short);
extern signed char (*v14) (unsigned short, signed char, signed short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern void v19 (signed short);
extern void (*v20) (signed short);
extern unsigned int v21 (signed char, signed short);
extern unsigned int (*v22) (signed char, signed short);
extern signed char v23 (unsigned short, unsigned char, unsigned char);
extern signed char (*v24) (unsigned short, unsigned char, unsigned char);
signed char v27 (unsigned short, unsigned char, unsigned char);
signed char (*v28) (unsigned short, unsigned char, unsigned char) = v27;
extern void v29 (unsigned int);
extern void (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v71 = 2;
unsigned int v70 = 0U;
unsigned short v69 = 7;

signed char v27 (unsigned short v72, unsigned char v73, unsigned char v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed int v77 = 2;
signed short v76 = -3;
signed short v75 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
