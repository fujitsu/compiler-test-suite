#include <stdlib.h>
extern unsigned char v3 (unsigned int, signed char, signed short);
extern unsigned char (*v4) (unsigned int, signed char, signed short);
signed short v5 (signed int, signed short, unsigned char);
signed short (*v6) (signed int, signed short, unsigned char) = v5;
extern signed short v7 (unsigned char, unsigned char, signed char);
extern signed short (*v8) (unsigned char, unsigned char, signed char);
extern signed char v9 (signed int, signed char, unsigned short, signed char);
extern signed char (*v10) (signed int, signed char, unsigned short, signed char);
extern unsigned int v13 (unsigned int, signed char, signed short);
extern unsigned int (*v14) (unsigned int, signed char, signed short);
extern signed char v15 (signed int, unsigned char);
extern signed char (*v16) (signed int, unsigned char);
extern unsigned int v17 (unsigned char, unsigned char, signed short, signed short);
extern unsigned int (*v18) (unsigned char, unsigned char, signed short, signed short);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
extern unsigned int v21 (signed short);
extern unsigned int (*v22) (signed short);
extern signed short v23 (unsigned short);
extern signed short (*v24) (unsigned short);
extern void v25 (unsigned short, unsigned short);
extern void (*v26) (unsigned short, unsigned short);
extern signed char v27 (signed char, unsigned char);
extern signed char (*v28) (signed char, unsigned char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v98 = 6;
unsigned short v97 = 6;
unsigned short v96 = 6;

signed short v5 (signed int v99, signed short v100, unsigned char v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = 2;
signed char v103 = -2;
signed short v102 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
