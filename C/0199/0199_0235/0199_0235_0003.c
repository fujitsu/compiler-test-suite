#include <stdlib.h>
extern signed int v1 (signed int, signed short, signed char, unsigned int);
extern signed int (*v2) (signed int, signed short, signed char, unsigned int);
extern signed int v3 (unsigned short, signed short, signed char);
extern signed int (*v4) (unsigned short, signed short, signed char);
extern signed short v5 (unsigned int, unsigned short);
extern signed short (*v6) (unsigned int, unsigned short);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern unsigned short v9 (unsigned short);
extern unsigned short (*v10) (unsigned short);
unsigned char v11 (unsigned char, unsigned short, signed int, unsigned char);
unsigned char (*v12) (unsigned char, unsigned short, signed int, unsigned char) = v11;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed int v21 (unsigned int, unsigned int, unsigned char, signed int);
extern signed int (*v22) (unsigned int, unsigned int, unsigned char, signed int);
extern unsigned int v23 (signed char, signed short, unsigned char);
extern unsigned int (*v24) (signed char, signed short, unsigned char);
extern signed int v25 (signed short, unsigned short);
extern signed int (*v26) (signed short, unsigned short);
extern signed char v27 (signed short, unsigned short);
extern signed char (*v28) (signed short, unsigned short);
extern void v29 (unsigned char, signed int, signed short, unsigned int);
extern void (*v30) (unsigned char, signed int, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v125 = 7;
unsigned int v124 = 1U;
unsigned int v123 = 2U;

unsigned char v11 (unsigned char v126, unsigned short v127, signed int v128, unsigned char v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed int v132 = 2;
unsigned char v131 = 4;
unsigned char v130 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
