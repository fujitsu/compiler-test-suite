#include <stdlib.h>
extern unsigned int v3 (signed char, signed char, unsigned int, signed char);
extern unsigned int (*v4) (signed char, signed char, unsigned int, signed char);
extern unsigned short v5 (signed int, unsigned int, unsigned char);
extern unsigned short (*v6) (signed int, unsigned int, unsigned char);
signed char v7 (unsigned short, unsigned short, unsigned int);
signed char (*v8) (unsigned short, unsigned short, unsigned int) = v7;
extern signed short v9 (unsigned char, signed char, unsigned int);
extern signed short (*v10) (unsigned char, signed char, unsigned int);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern signed short v15 (signed int, signed short);
extern signed short (*v16) (signed int, signed short);
extern signed int v17 (unsigned char, unsigned int, unsigned short);
extern signed int (*v18) (unsigned char, unsigned int, unsigned short);
extern void v19 (void);
extern void (*v20) (void);
extern signed short v21 (unsigned int, unsigned char);
extern signed short (*v22) (unsigned int, unsigned char);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned short v29 (unsigned char, unsigned char);
extern unsigned short (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v142 = -3;
signed char v141 = -1;
signed int v140 = 2;

signed char v7 (unsigned short v143, unsigned short v144, unsigned int v145)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned short v148 = 7;
signed short v147 = -2;
unsigned char v146 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
