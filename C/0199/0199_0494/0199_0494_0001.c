#include <stdlib.h>
extern unsigned char v1 (signed short, signed short, unsigned char);
extern unsigned char (*v2) (signed short, signed short, unsigned char);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern signed char v5 (unsigned int, signed char, unsigned int);
extern signed char (*v6) (unsigned int, signed char, unsigned int);
extern signed char v7 (signed short, unsigned int, unsigned short);
extern signed char (*v8) (signed short, unsigned int, unsigned short);
extern void v9 (unsigned short, signed short);
extern void (*v10) (unsigned short, signed short);
extern signed char v11 (unsigned short, signed short, signed int, unsigned short);
extern signed char (*v12) (unsigned short, signed short, signed int, unsigned short);
extern unsigned short v13 (unsigned int, signed int, unsigned short, signed short);
extern unsigned short (*v14) (unsigned int, signed int, unsigned short, signed short);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
void v19 (unsigned char, unsigned int);
void (*v20) (unsigned char, unsigned int) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed short v23 (unsigned char, unsigned short, unsigned char);
extern signed short (*v24) (unsigned char, unsigned short, unsigned char);
extern unsigned int v25 (signed int);
extern unsigned int (*v26) (signed int);
extern signed char v27 (signed char, unsigned char, unsigned int, unsigned int);
extern signed char (*v28) (signed char, unsigned char, unsigned int, unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v67 = -2;
unsigned char v66 = 5;
signed int v65 = 3;

void v19 (unsigned char v68, unsigned int v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 7U;
unsigned int v71 = 2U;
signed char v70 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
