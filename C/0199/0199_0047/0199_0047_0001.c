#include <stdlib.h>
extern signed short v1 (unsigned char, signed char, signed int, signed short);
extern signed short (*v2) (unsigned char, signed char, signed int, signed short);
void v3 (unsigned short);
void (*v4) (unsigned short) = v3;
extern unsigned int v5 (signed int, unsigned char);
extern unsigned int (*v6) (signed int, unsigned char);
extern unsigned char v7 (signed short, signed int);
extern unsigned char (*v8) (signed short, signed int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed short, signed short, signed short);
extern signed short (*v12) (signed short, signed short, signed short);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern unsigned int v15 (unsigned short, signed short, signed short);
extern unsigned int (*v16) (unsigned short, signed short, signed short);
extern void v17 (signed int, unsigned char);
extern void (*v18) (signed int, unsigned char);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned short v25 (signed short, unsigned int, unsigned char);
extern unsigned short (*v26) (signed short, unsigned int, unsigned char);
extern signed short v27 (signed char, unsigned int, unsigned int, unsigned short);
extern signed short (*v28) (signed char, unsigned int, unsigned int, unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v52 = 4U;
signed int v51 = -1;
unsigned short v50 = 6;

void v3 (unsigned short v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
unsigned short v56 = 1;
unsigned char v55 = 3;
unsigned int v54 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
