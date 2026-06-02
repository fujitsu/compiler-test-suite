#include <stdlib.h>
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (signed short, signed int, unsigned int, unsigned int);
extern void (*v6) (signed short, signed int, unsigned int, unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed int v17 (signed int, signed short);
extern signed int (*v18) (signed int, signed short);
extern signed short v19 (unsigned char, signed char);
extern signed short (*v20) (unsigned char, signed char);
extern unsigned char v21 (signed char, signed int, unsigned short, signed int);
extern unsigned char (*v22) (signed char, signed int, unsigned short, signed int);
void v23 (unsigned short, signed int, unsigned char, unsigned short);
void (*v24) (unsigned short, signed int, unsigned char, unsigned short) = v23;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed int, unsigned char, signed int, unsigned short);
extern unsigned short (*v30) (signed int, unsigned char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v126 = 3;
unsigned short v125 = 0;
signed int v124 = 0;

void v23 (unsigned short v127, signed int v128, unsigned char v129, unsigned short v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed char v133 = -4;
signed int v132 = -1;
signed int v131 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
