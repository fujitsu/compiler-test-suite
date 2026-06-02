#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
extern signed char v5 (signed short, unsigned short);
extern signed char (*v6) (signed short, unsigned short);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern void v9 (signed short);
extern void (*v10) (signed short);
extern signed char v11 (unsigned char, unsigned char);
extern signed char (*v12) (unsigned char, unsigned char);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
unsigned int v17 (signed int, unsigned int);
unsigned int (*v18) (signed int, unsigned int) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed short, unsigned char, unsigned int, unsigned char);
extern void (*v24) (signed short, unsigned char, unsigned int, unsigned char);
extern unsigned int v25 (unsigned int);
extern unsigned int (*v26) (unsigned int);
extern unsigned int v27 (signed short, signed short, unsigned int);
extern unsigned int (*v28) (signed short, signed short, unsigned int);
extern unsigned int v29 (signed char, signed char);
extern unsigned int (*v30) (signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v75 = 3;
unsigned int v74 = 5U;
signed char v73 = -1;

unsigned int v17 (signed int v76, unsigned int v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed short v80 = 3;
unsigned char v79 = 4;
signed int v78 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
