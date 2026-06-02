#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned short, unsigned int, unsigned short);
extern unsigned char (*v2) (unsigned short, unsigned short, unsigned int, unsigned short);
signed char v3 (unsigned int, signed short, unsigned short, unsigned short);
signed char (*v4) (unsigned int, signed short, unsigned short, unsigned short) = v3;
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern unsigned char v9 (unsigned int, unsigned short, unsigned int, unsigned int);
extern unsigned char (*v10) (unsigned int, unsigned short, unsigned int, unsigned int);
extern signed int v13 (unsigned short, signed int);
extern signed int (*v14) (unsigned short, signed int);
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
extern void v17 (signed short);
extern void (*v18) (signed short);
extern signed int v19 (signed int, unsigned int);
extern signed int (*v20) (signed int, unsigned int);
extern unsigned char v21 (signed char, signed short, signed short);
extern unsigned char (*v22) (signed char, signed short, signed short);
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v65 = 4U;
signed char v64 = 0;
unsigned char v63 = 0;

signed char v3 (unsigned int v66, signed short v67, unsigned short v68, unsigned short v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned short v72 = 0;
signed char v71 = -4;
unsigned char v70 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
