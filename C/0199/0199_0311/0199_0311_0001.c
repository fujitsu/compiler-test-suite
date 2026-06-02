#include <stdlib.h>
extern unsigned short v1 (signed char);
extern unsigned short (*v2) (signed char);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed char v5 (signed int, unsigned int, signed int);
extern signed char (*v6) (signed int, unsigned int, signed int);
extern unsigned int v7 (unsigned char, signed char);
extern unsigned int (*v8) (unsigned char, signed char);
signed int v9 (unsigned int, signed short, unsigned int);
signed int (*v10) (unsigned int, signed short, unsigned int) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (unsigned short, signed char);
extern unsigned short (*v16) (unsigned short, signed char);
extern unsigned char v17 (unsigned char, unsigned int);
extern unsigned char (*v18) (unsigned char, unsigned int);
extern signed short v19 (unsigned int, signed char, unsigned int);
extern signed short (*v20) (unsigned int, signed char, unsigned int);
extern unsigned char v21 (unsigned char, signed char, unsigned char);
extern unsigned char (*v22) (unsigned char, signed char, unsigned char);
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern void v25 (signed char, signed char, signed short);
extern void (*v26) (signed char, signed char, signed short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v58 = 2;
unsigned char v57 = 7;
unsigned char v56 = 0;

signed int v9 (unsigned int v59, signed short v60, unsigned int v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned short v64 = 7;
signed short v63 = 2;
unsigned short v62 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
