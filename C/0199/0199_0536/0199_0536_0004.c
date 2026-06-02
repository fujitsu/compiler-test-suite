#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned short, signed char, signed int);
extern signed char (*v2) (unsigned char, unsigned short, signed char, signed int);
unsigned short v3 (signed char, unsigned char, unsigned short, signed char);
unsigned short (*v4) (signed char, unsigned char, unsigned short, signed char) = v3;
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (signed short, unsigned char);
extern signed char (*v16) (signed short, unsigned char);
extern unsigned short v17 (signed int, signed int, signed int, signed int);
extern unsigned short (*v18) (signed int, signed int, signed int, signed int);
extern unsigned short v19 (unsigned int, signed short, signed char, unsigned short);
extern unsigned short (*v20) (unsigned int, signed short, signed char, unsigned short);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern signed int v23 (unsigned int, signed int, unsigned int);
extern signed int (*v24) (unsigned int, signed int, unsigned int);
extern unsigned int v25 (signed char, unsigned short);
extern unsigned int (*v26) (signed char, unsigned short);
extern unsigned char v27 (unsigned int, signed int, unsigned int);
extern unsigned char (*v28) (unsigned int, signed int, unsigned int);
extern unsigned char v29 (unsigned char);
extern unsigned char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v144 = 1;
signed char v143 = -3;
unsigned int v142 = 1U;

unsigned short v3 (signed char v145, unsigned char v146, unsigned short v147, signed char v148)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed char v151 = 2;
unsigned short v150 = 0;
signed short v149 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
