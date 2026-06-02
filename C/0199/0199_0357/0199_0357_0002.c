#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char);
extern unsigned short (*v2) (unsigned short, signed char);
extern unsigned char v3 (unsigned char, unsigned short);
extern unsigned char (*v4) (unsigned char, unsigned short);
extern unsigned char v5 (signed char, signed int);
extern unsigned char (*v6) (signed char, signed int);
extern signed short v9 (void);
extern signed short (*v10) (void);
signed char v13 (signed char, unsigned short, unsigned short);
signed char (*v14) (signed char, unsigned short, unsigned short) = v13;
extern signed char v15 (signed char, signed char);
extern signed char (*v16) (signed char, signed char);
extern signed char v17 (signed short, unsigned char, unsigned int);
extern signed char (*v18) (signed short, unsigned char, unsigned int);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (signed short);
extern unsigned int (*v24) (signed short);
extern unsigned char v25 (unsigned char, unsigned char, unsigned int, signed short);
extern unsigned char (*v26) (unsigned char, unsigned char, unsigned int, signed short);
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
extern signed char v29 (unsigned char, unsigned short, signed short);
extern signed char (*v30) (unsigned char, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v56 = 6U;
unsigned char v55 = 7;
signed int v54 = 0;

signed char v13 (signed char v57, unsigned short v58, unsigned short v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed char v62 = -2;
signed short v61 = -4;
unsigned short v60 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
