#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (signed int, signed char, unsigned int);
extern signed int (*v4) (signed int, signed char, unsigned int);
signed int v5 (signed char, signed char, unsigned int);
signed int (*v6) (signed char, signed char, unsigned int) = v5;
extern signed char v7 (unsigned short);
extern signed char (*v8) (unsigned short);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned int v13 (unsigned char, unsigned int);
extern unsigned int (*v14) (unsigned char, unsigned int);
extern unsigned int v15 (unsigned short, signed char, unsigned char);
extern unsigned int (*v16) (unsigned short, signed char, unsigned char);
extern signed short v17 (unsigned short, signed char);
extern signed short (*v18) (unsigned short, signed char);
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
extern signed char v21 (unsigned int, signed short, unsigned short);
extern signed char (*v22) (unsigned int, signed short, unsigned short);
extern signed char v23 (signed int);
extern signed char (*v24) (signed int);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern signed int v29 (signed int);
extern signed int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v95 = 2U;
signed char v94 = -4;
unsigned char v93 = 3;

signed int v5 (signed char v96, signed char v97, unsigned int v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 7;
unsigned short v100 = 7;
unsigned char v99 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
