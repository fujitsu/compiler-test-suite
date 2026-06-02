#include <stdlib.h>
extern void v1 (unsigned char, unsigned char, unsigned int, signed char);
extern void (*v2) (unsigned char, unsigned char, unsigned int, signed char);
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned char v7 (signed short, signed int);
extern unsigned char (*v8) (signed short, signed int);
extern signed char v9 (signed short, unsigned char, unsigned char);
extern signed char (*v10) (signed short, unsigned char, unsigned char);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (unsigned int);
extern signed char (*v14) (unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned int v17 (signed char);
extern unsigned int (*v18) (signed char);
extern unsigned int v19 (unsigned int);
extern unsigned int (*v20) (unsigned int);
unsigned char v21 (unsigned int, unsigned char, unsigned int, unsigned char);
unsigned char (*v22) (unsigned int, unsigned char, unsigned int, unsigned char) = v21;
extern signed int v23 (unsigned short);
extern signed int (*v24) (unsigned short);
extern void v25 (unsigned short, unsigned int, signed char, signed int);
extern void (*v26) (unsigned short, unsigned int, signed char, signed int);
extern unsigned int v27 (unsigned int, signed int, signed char);
extern unsigned int (*v28) (unsigned int, signed int, signed char);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v126 = 0U;
signed char v125 = -2;
unsigned char v124 = 7;

unsigned char v21 (unsigned int v127, unsigned char v128, unsigned int v129, unsigned char v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = -2;
signed int v132 = -2;
unsigned char v131 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
