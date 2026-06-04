#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (signed char, signed char, unsigned int);
extern unsigned int (*v4) (signed char, signed char, unsigned int);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (unsigned int, unsigned int, signed char, signed int);
extern signed int (*v8) (unsigned int, unsigned int, signed char, signed int);
extern signed char v9 (signed char, signed short);
extern signed char (*v10) (signed char, signed short);
extern void v11 (signed short);
extern void (*v12) (signed short);
extern void v17 (signed char);
extern void (*v18) (signed char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (signed char, signed char);
extern signed short (*v22) (signed char, signed char);
extern signed short v23 (signed char, unsigned char, signed short);
extern signed short (*v24) (signed char, unsigned char, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
unsigned char v27 (signed char, unsigned short, unsigned char, unsigned int);
unsigned char (*v28) (signed char, unsigned short, unsigned char, unsigned int) = v27;
extern unsigned int v29 (unsigned char);
extern unsigned int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v65 = 1;
unsigned int v64 = 0U;
signed short v63 = -1;

unsigned char v27 (signed char v66, unsigned short v67, unsigned char v68, unsigned int v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned short v72 = 2;
unsigned char v71 = 6;
unsigned int v70 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
