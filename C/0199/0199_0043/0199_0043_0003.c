#include <stdlib.h>
extern signed short v1 (signed int, unsigned int, signed char, signed short);
extern signed short (*v2) (signed int, unsigned int, signed char, signed short);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
signed int v5 (signed char, unsigned int, signed int);
signed int (*v6) (signed char, unsigned int, signed int) = v5;
extern unsigned short v9 (unsigned char, signed char, unsigned short);
extern unsigned short (*v10) (unsigned char, signed char, unsigned short);
extern unsigned short v11 (unsigned char, signed short, unsigned int, unsigned int);
extern unsigned short (*v12) (unsigned char, signed short, unsigned int, unsigned int);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern void v17 (unsigned short, unsigned short, unsigned int);
extern void (*v18) (unsigned short, unsigned short, unsigned int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern unsigned char v21 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v22) (unsigned char, unsigned short, unsigned short);
extern signed char v23 (signed char, signed int, unsigned int, unsigned int);
extern signed char (*v24) (signed char, signed int, unsigned int, unsigned int);
extern void v25 (unsigned char, signed char, signed int, unsigned short);
extern void (*v26) (unsigned char, signed char, signed int, unsigned short);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (signed char, unsigned short, unsigned int, signed int);
extern signed char (*v30) (signed char, unsigned short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v97 = -2;
signed char v96 = 3;
signed short v95 = -1;

signed int v5 (signed char v98, unsigned int v99, signed int v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned int v103 = 2U;
unsigned int v102 = 5U;
unsigned int v101 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
