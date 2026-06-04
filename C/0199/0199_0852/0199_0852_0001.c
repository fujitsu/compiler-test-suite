#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
signed short v7 (unsigned int, signed char, signed int);
signed short (*v8) (unsigned int, signed char, signed int) = v7;
extern signed char v13 (signed int, signed short);
extern signed char (*v14) (signed int, signed short);
extern unsigned int v15 (unsigned int, unsigned char);
extern unsigned int (*v16) (unsigned int, unsigned char);
extern signed char v17 (unsigned short, unsigned int, unsigned char);
extern signed char (*v18) (unsigned short, unsigned int, unsigned char);
extern signed char v19 (signed char, signed char);
extern signed char (*v20) (signed char, signed char);
extern void v21 (unsigned char, signed int);
extern void (*v22) (unsigned char, signed int);
extern unsigned char v23 (unsigned char, signed int);
extern unsigned char (*v24) (unsigned char, signed int);
extern signed char v25 (unsigned int, signed char);
extern signed char (*v26) (unsigned int, signed char);
extern void v29 (unsigned int, signed int);
extern void (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v45 = -2;
signed char v44 = -4;
unsigned int v43 = 4U;

signed short v7 (unsigned int v46, signed char v47, signed int v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 2U;
unsigned short v50 = 4;
unsigned short v49 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
