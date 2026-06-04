#include <stdlib.h>
extern signed short v1 (unsigned char);
extern signed short (*v2) (unsigned char);
extern signed char v3 (signed short, signed char, signed int, signed short);
extern signed char (*v4) (signed short, signed char, signed int, signed short);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern signed int v7 (unsigned char, unsigned char, unsigned short, signed short);
extern signed int (*v8) (unsigned char, unsigned char, unsigned short, signed short);
extern unsigned short v9 (unsigned char, signed char);
extern unsigned short (*v10) (unsigned char, signed char);
extern signed char v11 (unsigned int, unsigned int);
extern signed char (*v12) (unsigned int, unsigned int);
extern signed int v13 (unsigned short, unsigned int, signed char, signed char);
extern signed int (*v14) (unsigned short, unsigned int, signed char, signed char);
extern signed short v15 (unsigned short, unsigned short, signed short);
extern signed short (*v16) (unsigned short, unsigned short, signed short);
extern unsigned int v17 (unsigned short, unsigned short, unsigned char);
extern unsigned int (*v18) (unsigned short, unsigned short, unsigned char);
unsigned int v19 (signed int, unsigned char, signed int, unsigned int);
unsigned int (*v20) (signed int, unsigned char, signed int, unsigned int) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (unsigned int, signed short, unsigned short, signed char);
extern unsigned int (*v24) (unsigned int, signed short, unsigned short, signed char);
extern signed int v25 (signed short, unsigned short);
extern signed int (*v26) (signed short, unsigned short);
extern unsigned int v27 (signed short, signed int, unsigned short);
extern unsigned int (*v28) (signed short, signed int, unsigned short);
extern signed char v29 (unsigned char);
extern signed char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v142 = 1;
unsigned short v141 = 3;
unsigned short v140 = 7;

unsigned int v19 (signed int v143, unsigned char v144, signed int v145, unsigned int v146)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed short v149 = 3;
signed int v148 = -2;
signed char v147 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
