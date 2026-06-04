#include <stdlib.h>
extern void v1 (signed char, unsigned short, unsigned int);
extern void (*v2) (signed char, unsigned short, unsigned int);
extern unsigned short v3 (signed short, unsigned char, signed char);
extern unsigned short (*v4) (signed short, unsigned char, signed char);
extern void v5 (unsigned short, unsigned short, unsigned char, signed char);
extern void (*v6) (unsigned short, unsigned short, unsigned char, signed char);
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
extern signed int v11 (void);
extern signed int (*v12) (void);
signed char v13 (signed short);
signed char (*v14) (signed short) = v13;
extern unsigned char v15 (unsigned short, signed char, signed char, unsigned char);
extern unsigned char (*v16) (unsigned short, signed char, signed char, unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned char v19 (unsigned int, unsigned char);
extern unsigned char (*v20) (unsigned int, unsigned char);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern unsigned short v23 (unsigned int, signed int);
extern unsigned short (*v24) (unsigned int, signed int);
extern void v25 (unsigned char, unsigned int, signed short);
extern void (*v26) (unsigned char, unsigned int, signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v50 = 2;
signed short v49 = -1;
unsigned int v48 = 6U;

signed char v13 (signed short v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = 3;
signed short v53 = 3;
unsigned char v52 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
