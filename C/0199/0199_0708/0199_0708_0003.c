#include <stdlib.h>
extern unsigned int v3 (signed char, signed short);
extern unsigned int (*v4) (signed char, signed short);
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
unsigned char v7 (unsigned char, signed short, unsigned int, signed int);
unsigned char (*v8) (unsigned char, signed short, unsigned int, signed int) = v7;
extern signed int v9 (unsigned short, unsigned char);
extern signed int (*v10) (unsigned short, unsigned char);
extern void v11 (signed short, unsigned int);
extern void (*v12) (signed short, unsigned int);
extern unsigned short v13 (unsigned short, unsigned char);
extern unsigned short (*v14) (unsigned short, unsigned char);
extern unsigned short v15 (signed short, signed char);
extern unsigned short (*v16) (signed short, signed char);
extern void v17 (signed int);
extern void (*v18) (signed int);
extern signed short v19 (signed int, unsigned int, unsigned short);
extern signed short (*v20) (signed int, unsigned int, unsigned short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (signed int, unsigned char, unsigned int);
extern unsigned int (*v24) (signed int, unsigned char, unsigned int);
extern unsigned char v25 (unsigned short, signed char, unsigned char);
extern unsigned char (*v26) (unsigned short, signed char, unsigned char);
extern unsigned short v27 (signed char, signed short, signed int);
extern unsigned short (*v28) (signed char, signed short, signed int);
extern unsigned short v29 (signed int, unsigned char, signed short, unsigned int);
extern unsigned short (*v30) (signed int, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v123 = 3;
unsigned short v122 = 6;
signed short v121 = -1;

unsigned char v7 (unsigned char v124, signed short v125, unsigned int v126, signed int v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = 0;
signed int v129 = -1;
unsigned char v128 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
