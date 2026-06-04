#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short);
extern unsigned int (*v2) (unsigned short, signed short);
extern unsigned int v3 (unsigned char, unsigned int, unsigned char);
extern unsigned int (*v4) (unsigned char, unsigned int, unsigned char);
extern signed short v5 (void);
extern signed short (*v6) (void);
unsigned char v7 (unsigned short);
unsigned char (*v8) (unsigned short) = v7;
extern signed char v9 (unsigned int, unsigned int, signed short, signed short);
extern signed char (*v10) (unsigned int, unsigned int, signed short, signed short);
extern signed char v11 (signed int, unsigned short);
extern signed char (*v12) (signed int, unsigned short);
extern unsigned char v13 (unsigned short, unsigned short, unsigned int);
extern unsigned char (*v14) (unsigned short, unsigned short, unsigned int);
extern signed int v15 (unsigned char, unsigned int, unsigned char);
extern signed int (*v16) (unsigned char, unsigned int, unsigned char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed char, signed int, signed char);
extern unsigned char (*v20) (signed char, signed int, signed char);
extern signed int v21 (unsigned int, unsigned char, signed int);
extern signed int (*v22) (unsigned int, unsigned char, signed int);
extern signed char v25 (signed char, signed char);
extern signed char (*v26) (signed char, signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v144 = -4;
signed int v143 = -3;
signed short v142 = 2;

unsigned char v7 (unsigned short v145)
{
history[history_index++] = (int)v145;
{
for (;;) {
signed short v148 = -1;
unsigned short v147 = 0;
signed char v146 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
