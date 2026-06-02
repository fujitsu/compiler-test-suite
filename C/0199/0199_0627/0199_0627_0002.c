#include <stdlib.h>
extern unsigned short v1 (signed char, unsigned int);
extern unsigned short (*v2) (signed char, unsigned int);
extern signed int v3 (unsigned char, signed char);
extern signed int (*v4) (unsigned char, signed char);
extern signed int v5 (signed short, unsigned char, signed short);
extern signed int (*v6) (signed short, unsigned char, signed short);
extern signed char v7 (signed int, signed short);
extern signed char (*v8) (signed int, signed short);
extern unsigned char v9 (signed char, signed int);
extern unsigned char (*v10) (signed char, signed int);
signed short v11 (signed char, unsigned int);
signed short (*v12) (signed char, unsigned int) = v11;
extern void v13 (unsigned short, unsigned short, signed char);
extern void (*v14) (unsigned short, unsigned short, signed char);
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (void);
extern void (*v20) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
extern unsigned short v27 (unsigned char, signed char);
extern unsigned short (*v28) (unsigned char, signed char);
extern signed int v29 (unsigned short, signed short, unsigned short, signed short);
extern signed int (*v30) (unsigned short, signed short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v81 = 5;
unsigned char v80 = 5;
signed short v79 = 1;

signed short v11 (signed char v82, unsigned int v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 0;
unsigned int v85 = 0U;
unsigned char v84 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
