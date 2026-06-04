#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short);
extern unsigned int (*v2) (unsigned short, signed short);
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
extern void v5 (signed char, signed char, signed int);
extern void (*v6) (signed char, signed char, signed int);
extern unsigned char v7 (signed short, unsigned short, unsigned int, signed short);
extern unsigned char (*v8) (signed short, unsigned short, unsigned int, signed short);
extern void v9 (unsigned char, signed char, signed short);
extern void (*v10) (unsigned char, signed char, signed short);
extern unsigned char v11 (unsigned char, unsigned short, signed short);
extern unsigned char (*v12) (unsigned char, unsigned short, signed short);
extern signed char v13 (unsigned short, signed short, unsigned char, signed int);
extern signed char (*v14) (unsigned short, signed short, unsigned char, signed int);
extern void v15 (unsigned short, signed char, unsigned int, unsigned char);
extern void (*v16) (unsigned short, signed char, unsigned int, unsigned char);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned int v19 (unsigned int, unsigned int, signed int, unsigned char);
extern unsigned int (*v20) (unsigned int, unsigned int, signed int, unsigned char);
extern unsigned int v23 (unsigned char, signed char, unsigned int, signed int);
extern unsigned int (*v24) (unsigned char, signed char, unsigned int, signed int);
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
signed char v27 (unsigned char);
signed char (*v28) (unsigned char) = v27;
extern void v29 (signed short, signed int);
extern void (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v100 = 1;
unsigned int v99 = 1U;
signed char v98 = -1;

signed char v27 (unsigned char v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = -3;
signed short v103 = -2;
unsigned int v102 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
