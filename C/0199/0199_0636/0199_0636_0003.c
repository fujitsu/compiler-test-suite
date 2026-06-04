#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned char, signed char);
extern unsigned char (*v2) (signed short, unsigned char, signed char);
extern signed short v3 (unsigned int);
extern signed short (*v4) (unsigned int);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
void v7 (unsigned int);
void (*v8) (unsigned int) = v7;
extern signed char v9 (unsigned char, unsigned short);
extern signed char (*v10) (unsigned char, unsigned short);
extern void v11 (signed short);
extern void (*v12) (signed short);
extern signed char v13 (signed char, signed int, unsigned int);
extern signed char (*v14) (signed char, signed int, unsigned int);
extern void v15 (signed int);
extern void (*v16) (signed int);
extern signed short v17 (unsigned short, unsigned char);
extern signed short (*v18) (unsigned short, unsigned char);
extern unsigned int v19 (signed char, signed short, signed int, signed int);
extern unsigned int (*v20) (signed char, signed short, signed int, signed int);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v27 (unsigned char);
extern signed short (*v28) (unsigned char);
extern signed int v29 (unsigned char, signed int, signed char);
extern signed int (*v30) (unsigned char, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v101 = -1;
signed short v100 = -3;
signed short v99 = -1;

void v7 (unsigned int v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 7U;
signed char v104 = -3;
unsigned short v103 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
