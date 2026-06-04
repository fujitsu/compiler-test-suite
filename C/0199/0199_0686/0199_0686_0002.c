#include <stdlib.h>
extern signed char v1 (signed char, unsigned short, unsigned char);
extern signed char (*v2) (signed char, unsigned short, unsigned char);
extern signed char v3 (unsigned short, signed short);
extern signed char (*v4) (unsigned short, signed short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (signed int, signed char, unsigned int);
extern unsigned int (*v8) (signed int, signed char, unsigned int);
extern signed short v9 (signed char, unsigned short);
extern signed short (*v10) (signed char, unsigned short);
signed int v11 (unsigned short, signed short, unsigned char, signed char);
signed int (*v12) (unsigned short, signed short, unsigned char, signed char) = v11;
extern unsigned char v13 (signed short, unsigned short, unsigned short, signed int);
extern unsigned char (*v14) (signed short, unsigned short, unsigned short, signed int);
extern signed int v17 (signed int, signed char, unsigned short);
extern signed int (*v18) (signed int, signed char, unsigned short);
extern unsigned char v19 (unsigned short);
extern unsigned char (*v20) (unsigned short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (signed int, unsigned short, unsigned short);
extern unsigned int (*v24) (signed int, unsigned short, unsigned short);
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
extern unsigned char v27 (signed int, unsigned int, signed int, signed short);
extern unsigned char (*v28) (signed int, unsigned int, signed int, signed short);
extern signed char v29 (signed int, unsigned char, unsigned short);
extern signed char (*v30) (signed int, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v94 = 2;
signed int v93 = -3;
signed char v92 = -4;

signed int v11 (unsigned short v95, signed short v96, unsigned char v97, signed char v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = -3;
unsigned char v100 = 4;
signed char v99 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
