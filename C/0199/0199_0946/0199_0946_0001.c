#include <stdlib.h>
extern unsigned int v3 (unsigned short, signed int, signed char);
extern unsigned int (*v4) (unsigned short, signed int, signed char);
extern signed int v5 (unsigned char, unsigned int, signed int);
extern signed int (*v6) (unsigned char, unsigned int, signed int);
extern signed short v7 (signed char, signed int, signed short);
extern signed short (*v8) (signed char, signed int, signed short);
extern void v9 (unsigned char, signed char, unsigned int);
extern void (*v10) (unsigned char, signed char, unsigned int);
unsigned char v11 (unsigned char, unsigned short);
unsigned char (*v12) (unsigned char, unsigned short) = v11;
void v13 (unsigned char, unsigned short, signed short, unsigned int);
void (*v14) (unsigned char, unsigned short, signed short, unsigned int) = v13;
extern unsigned char v15 (signed char, signed int);
extern unsigned char (*v16) (signed char, signed int);
extern void v17 (unsigned int, unsigned char, signed int);
extern void (*v18) (unsigned int, unsigned char, signed int);
extern void v19 (unsigned char, unsigned char, unsigned short, unsigned int);
extern void (*v20) (unsigned char, unsigned char, unsigned short, unsigned int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed char, signed int);
extern signed int (*v26) (signed char, signed int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (signed short, unsigned int);
extern unsigned char (*v30) (signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v71 = -4;
unsigned short v70 = 5;
signed short v69 = -3;

void v13 (unsigned char v72, unsigned short v73, signed short v74, unsigned int v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = 0;
signed char v77 = -1;
signed int v76 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned char v79, unsigned short v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed int v83 = -2;
unsigned int v82 = 7U;
signed short v81 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
