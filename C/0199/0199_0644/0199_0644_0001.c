#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned char v7 (signed char);
extern unsigned char (*v8) (signed char);
extern unsigned int v9 (signed short, signed int, signed char);
extern unsigned int (*v10) (signed short, signed int, signed char);
extern void v11 (unsigned char, unsigned short, unsigned char, signed int);
extern void (*v12) (unsigned char, unsigned short, unsigned char, signed int);
extern unsigned int v13 (signed int, signed short, unsigned char);
extern unsigned int (*v14) (signed int, signed short, unsigned char);
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
unsigned char v25 (signed char, signed int, signed int, signed int);
unsigned char (*v26) (signed char, signed int, signed int, signed int) = v25;
extern signed short v27 (unsigned int, signed int, unsigned int);
extern signed short (*v28) (unsigned int, signed int, unsigned int);
extern unsigned short v29 (signed int, signed int);
extern unsigned short (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v59 = 2;
unsigned char v58 = 6;
unsigned short v57 = 5;

unsigned char v25 (signed char v60, signed int v61, signed int v62, signed int v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned int v66 = 3U;
signed char v65 = -2;
unsigned char v64 = 1;
trace++;
switch (trace)
{
case 1: 
return v64;
default: abort ();
}
}
}
}
