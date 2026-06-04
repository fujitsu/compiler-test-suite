#include <stdlib.h>
extern unsigned int v1 (unsigned int);
extern unsigned int (*v2) (unsigned int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
unsigned char v7 (signed short, signed short, unsigned short, signed char);
unsigned char (*v8) (signed short, signed short, unsigned short, signed char) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned short v11 (unsigned char, signed char);
extern unsigned short (*v12) (unsigned char, signed char);
extern unsigned int v13 (unsigned int);
extern unsigned int (*v14) (unsigned int);
extern unsigned char v15 (signed short);
extern unsigned char (*v16) (signed short);
extern signed short v17 (unsigned int, signed char, unsigned short, signed short);
extern signed short (*v18) (unsigned int, signed char, unsigned short, signed short);
extern unsigned int v19 (unsigned int, unsigned int, unsigned short);
extern unsigned int (*v20) (unsigned int, unsigned int, unsigned short);
extern unsigned char v21 (signed short, unsigned short);
extern unsigned char (*v22) (signed short, unsigned short);
extern signed char v23 (unsigned int, unsigned short);
extern signed char (*v24) (unsigned int, unsigned short);
extern unsigned char v25 (signed int);
extern unsigned char (*v26) (signed int);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned char v29 (unsigned char, unsigned char);
extern unsigned char (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v120 = 0;
unsigned char v119 = 5;
signed int v118 = -1;

unsigned char v7 (signed short v121, signed short v122, unsigned short v123, signed char v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = -3;
unsigned char v126 = 4;
signed short v125 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
