#include <stdlib.h>
extern signed char v1 (signed short);
extern signed char (*v2) (signed short);
extern unsigned short v3 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned short (*v4) (unsigned char, unsigned int, unsigned short, signed char);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern unsigned char v7 (unsigned short, signed int);
extern unsigned char (*v8) (unsigned short, signed int);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern signed int v11 (unsigned short, unsigned int, signed short, signed short);
extern signed int (*v12) (unsigned short, unsigned int, signed short, signed short);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern signed short v15 (unsigned char, unsigned char, signed int, unsigned short);
extern signed short (*v16) (unsigned char, unsigned char, signed int, unsigned short);
extern signed int v17 (signed char, unsigned char);
extern signed int (*v18) (signed char, unsigned char);
extern signed int v19 (signed short, signed char);
extern signed int (*v20) (signed short, signed char);
extern signed short v21 (signed int, unsigned int);
extern signed short (*v22) (signed int, unsigned int);
extern unsigned char v23 (unsigned short, unsigned int, signed char);
extern unsigned char (*v24) (unsigned short, unsigned int, signed char);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
unsigned char v27 (signed int, unsigned char, signed short, unsigned short);
unsigned char (*v28) (signed int, unsigned char, signed short, unsigned short) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v49 = 4U;
unsigned char v48 = 3;
signed int v47 = -2;

unsigned char v27 (signed int v50, unsigned char v51, signed short v52, unsigned short v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = -2;
signed int v55 = 1;
signed int v54 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
