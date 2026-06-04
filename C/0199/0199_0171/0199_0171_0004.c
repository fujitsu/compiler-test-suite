#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned char v5 (unsigned short, signed short);
extern unsigned char (*v6) (unsigned short, signed short);
extern unsigned char v7 (unsigned int, signed int);
extern unsigned char (*v8) (unsigned int, signed int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (signed int);
extern unsigned char (*v16) (signed int);
extern unsigned int v17 (unsigned short, unsigned char, signed short, unsigned char);
extern unsigned int (*v18) (unsigned short, unsigned char, signed short, unsigned char);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern void v21 (signed short, signed int);
extern void (*v22) (signed short, signed int);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed int v25 (signed char, signed char, signed int);
extern signed int (*v26) (signed char, signed char, signed int);
unsigned char v27 (signed char, signed short, unsigned int);
unsigned char (*v28) (signed char, signed short, unsigned int) = v27;
extern unsigned int v29 (signed short, unsigned char);
extern unsigned int (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v127 = 7;
signed int v126 = 0;
signed char v125 = 1;

unsigned char v27 (signed char v128, signed short v129, unsigned int v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned int v133 = 0U;
signed short v132 = -4;
signed short v131 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
