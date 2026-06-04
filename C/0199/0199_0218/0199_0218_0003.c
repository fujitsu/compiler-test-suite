#include <stdlib.h>
extern signed short v1 (unsigned char);
extern signed short (*v2) (unsigned char);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
unsigned char v7 (unsigned short, unsigned char, unsigned short, signed char);
unsigned char (*v8) (unsigned short, unsigned char, unsigned short, signed char) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed int v11 (unsigned char, unsigned int, unsigned char);
extern signed int (*v12) (unsigned char, unsigned int, unsigned char);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern signed char v15 (signed short, signed int);
extern signed char (*v16) (signed short, signed int);
extern signed int v17 (signed short, unsigned char);
extern signed int (*v18) (signed short, unsigned char);
extern unsigned short v19 (signed short, signed short);
extern unsigned short (*v20) (signed short, signed short);
extern void v23 (signed char, signed char, unsigned char);
extern void (*v24) (signed char, signed char, unsigned char);
extern void v25 (unsigned int, signed int);
extern void (*v26) (unsigned int, signed int);
extern unsigned char v27 (signed char, signed int);
extern unsigned char (*v28) (signed char, signed int);
extern signed char v29 (unsigned char, unsigned int, unsigned short);
extern signed char (*v30) (unsigned char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v96 = 0;
unsigned short v95 = 4;
signed int v94 = -2;

unsigned char v7 (unsigned short v97, unsigned char v98, unsigned short v99, signed char v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned int v103 = 6U;
signed char v102 = 1;
unsigned char v101 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
