#include <stdlib.h>
extern signed int v1 (unsigned short, signed int);
extern signed int (*v2) (unsigned short, signed int);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed int v5 (unsigned short, unsigned int, unsigned char, signed int);
extern signed int (*v6) (unsigned short, unsigned int, unsigned char, signed int);
extern void v7 (signed char, signed char, signed short, unsigned short);
extern void (*v8) (signed char, signed char, signed short, unsigned short);
extern void v9 (signed short, unsigned char);
extern void (*v10) (signed short, unsigned char);
extern void v11 (unsigned int, unsigned int, unsigned char, unsigned int);
extern void (*v12) (unsigned int, unsigned int, unsigned char, unsigned int);
unsigned int v13 (signed int, unsigned char);
unsigned int (*v14) (signed int, unsigned char) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern unsigned short v17 (signed char, unsigned short, signed int, signed short);
extern unsigned short (*v18) (signed char, unsigned short, signed int, signed short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed char v23 (signed int, unsigned char);
extern signed char (*v24) (signed int, unsigned char);
extern unsigned int v25 (unsigned short, unsigned char);
extern unsigned int (*v26) (unsigned short, unsigned char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v132 = 6U;
unsigned short v131 = 3;
unsigned char v130 = 2;

unsigned int v13 (signed int v133, unsigned char v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned short v137 = 3;
signed short v136 = 0;
unsigned short v135 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
