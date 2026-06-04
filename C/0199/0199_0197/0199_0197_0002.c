#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned int);
extern unsigned short (*v2) (signed short, unsigned int);
extern unsigned short v3 (unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned short, unsigned short);
extern unsigned short v5 (signed int, unsigned int);
extern unsigned short (*v6) (signed int, unsigned int);
extern signed char v7 (signed int, unsigned short, unsigned char, unsigned short);
extern signed char (*v8) (signed int, unsigned short, unsigned char, unsigned short);
unsigned char v9 (signed int, unsigned char, signed char);
unsigned char (*v10) (signed int, unsigned char, signed char) = v9;
extern signed char v11 (signed int, unsigned int, unsigned short);
extern signed char (*v12) (signed int, unsigned int, unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
unsigned short v15 (signed short);
unsigned short (*v16) (signed short) = v15;
extern signed short v17 (signed char, signed int);
extern signed short (*v18) (signed char, signed int);
extern signed short v19 (unsigned short, unsigned short, signed int, signed short);
extern signed short (*v20) (unsigned short, unsigned short, signed int, signed short);
extern signed short v21 (unsigned int, unsigned int);
extern signed short (*v22) (unsigned int, unsigned int);
extern void v23 (signed char, unsigned int, unsigned char);
extern void (*v24) (signed char, unsigned int, unsigned char);
extern unsigned char v25 (signed char, signed short, unsigned short);
extern unsigned char (*v26) (signed char, signed short, unsigned short);
extern unsigned short v27 (signed short, signed short, signed int);
extern unsigned short (*v28) (signed short, signed short, signed int);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v74 = 3;
unsigned char v73 = 0;
unsigned char v72 = 4;

unsigned short v15 (signed short v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = 3;
unsigned char v77 = 7;
unsigned short v76 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed int v79, unsigned char v80, signed char v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 1U;
unsigned short v83 = 0;
signed int v82 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
