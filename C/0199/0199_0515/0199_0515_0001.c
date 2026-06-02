#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned int v3 (signed int, signed short, unsigned int);
extern unsigned int (*v4) (signed int, signed short, unsigned int);
extern unsigned int v5 (unsigned short);
extern unsigned int (*v6) (unsigned short);
extern signed int v7 (unsigned short);
extern signed int (*v8) (unsigned short);
extern signed char v9 (signed char);
extern signed char (*v10) (signed char);
signed int v11 (unsigned char, unsigned char, signed char);
signed int (*v12) (unsigned char, unsigned char, signed char) = v11;
extern void v13 (signed short);
extern void (*v14) (signed short);
extern signed char v15 (unsigned short, unsigned int);
extern signed char (*v16) (unsigned short, unsigned int);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern unsigned short v19 (signed int, signed char, signed short, signed char);
extern unsigned short (*v20) (signed int, signed char, signed short, signed char);
extern unsigned short v21 (signed int, unsigned char, signed char, signed int);
extern unsigned short (*v22) (signed int, unsigned char, signed char, signed int);
extern unsigned int v23 (unsigned char, unsigned short);
extern unsigned int (*v24) (unsigned char, unsigned short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v62 = 6;
signed int v61 = 1;
unsigned short v60 = 3;

signed int v11 (unsigned char v63, unsigned char v64, signed char v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = -3;
unsigned short v67 = 6;
unsigned int v66 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
