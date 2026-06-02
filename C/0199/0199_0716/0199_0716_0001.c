#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed short, unsigned int);
extern unsigned int (*v2) (unsigned int, signed short, unsigned int);
unsigned char v3 (unsigned char, unsigned short, unsigned char, signed short);
unsigned char (*v4) (unsigned char, unsigned short, unsigned char, signed short) = v3;
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern signed int v7 (unsigned short, unsigned int, unsigned int, unsigned char);
extern signed int (*v8) (unsigned short, unsigned int, unsigned int, unsigned char);
extern signed char v9 (unsigned char, unsigned int, signed char);
extern signed char (*v10) (unsigned char, unsigned int, signed char);
extern unsigned short v11 (unsigned int, unsigned int, signed short, unsigned int);
extern unsigned short (*v12) (unsigned int, unsigned int, signed short, unsigned int);
extern signed char v13 (unsigned int, unsigned short);
extern signed char (*v14) (unsigned int, unsigned short);
extern unsigned int v15 (signed short, signed short);
extern unsigned int (*v16) (signed short, signed short);
extern unsigned short v17 (unsigned int, unsigned short, unsigned char);
extern unsigned short (*v18) (unsigned int, unsigned short, unsigned char);
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
extern unsigned short v21 (signed char, signed int);
extern unsigned short (*v22) (signed char, signed int);
extern unsigned short v23 (unsigned short, unsigned char);
extern unsigned short (*v24) (unsigned short, unsigned char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed char v27 (unsigned char, unsigned int, signed char);
extern signed char (*v28) (unsigned char, unsigned int, signed char);
extern unsigned int v29 (unsigned char);
extern unsigned int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v61 = -2;
unsigned int v60 = 6U;
signed short v59 = -4;

unsigned char v3 (unsigned char v62, unsigned short v63, unsigned char v64, signed short v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = -2;
signed int v67 = -3;
unsigned char v66 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
