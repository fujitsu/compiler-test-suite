#include <stdlib.h>
extern unsigned char v1 (signed short, signed short);
extern unsigned char (*v2) (signed short, signed short);
extern signed short v3 (unsigned short, signed char);
extern signed short (*v4) (unsigned short, signed char);
extern unsigned int v5 (unsigned short, signed char, unsigned char, signed char);
extern unsigned int (*v6) (unsigned short, signed char, unsigned char, signed char);
extern unsigned int v7 (unsigned short, unsigned int, unsigned short);
extern unsigned int (*v8) (unsigned short, unsigned int, unsigned short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern unsigned int v11 (signed int, signed char);
extern unsigned int (*v12) (signed int, signed char);
unsigned short v13 (unsigned int, signed char, unsigned char, unsigned int);
unsigned short (*v14) (unsigned int, signed char, unsigned char, unsigned int) = v13;
extern signed int v15 (signed short);
extern signed int (*v16) (signed short);
extern signed int v17 (signed short, signed char, unsigned int);
extern signed int (*v18) (signed short, signed char, unsigned int);
extern unsigned char v19 (signed int, unsigned int, unsigned char);
extern unsigned char (*v20) (signed int, unsigned int, unsigned char);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned int v27 (unsigned short, unsigned short, unsigned short, unsigned int);
extern unsigned int (*v28) (unsigned short, unsigned short, unsigned short, unsigned int);
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v96 = 4;
unsigned char v95 = 0;
unsigned int v94 = 1U;

unsigned short v13 (unsigned int v97, signed char v98, unsigned char v99, unsigned int v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned int v103 = 0U;
signed char v102 = -2;
signed int v101 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
