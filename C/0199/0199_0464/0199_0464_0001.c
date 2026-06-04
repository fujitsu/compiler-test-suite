#include <stdlib.h>
extern signed int v3 (signed char, signed short);
extern signed int (*v4) (signed char, signed short);
extern void v5 (void);
extern void (*v6) (void);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
signed int v15 (signed char, signed int, signed short, unsigned int);
signed int (*v16) (signed char, signed int, signed short, unsigned int) = v15;
extern signed int v17 (signed char, unsigned char, signed int, unsigned int);
extern signed int (*v18) (signed char, unsigned char, signed int, unsigned int);
extern unsigned int v21 (unsigned short, unsigned short);
extern unsigned int (*v22) (unsigned short, unsigned short);
extern signed int v23 (signed char, unsigned char, signed char);
extern signed int (*v24) (signed char, unsigned char, signed char);
extern unsigned char v25 (signed short, signed int, unsigned char, signed int);
extern unsigned char (*v26) (signed short, signed int, unsigned char, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v70 = 7U;
unsigned int v69 = 2U;
signed short v68 = -2;

signed int v15 (signed char v71, signed int v72, signed short v73, unsigned int v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = -1;
signed char v76 = 2;
unsigned char v75 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
