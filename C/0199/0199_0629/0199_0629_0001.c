#include <stdlib.h>
extern unsigned char v1 (signed short, signed char, unsigned short, unsigned int);
extern unsigned char (*v2) (signed short, signed char, unsigned short, unsigned int);
extern unsigned char v3 (signed int, signed short, unsigned short, signed int);
extern unsigned char (*v4) (signed int, signed short, unsigned short, signed int);
signed char v7 (unsigned char, unsigned short, unsigned short);
signed char (*v8) (unsigned char, unsigned short, unsigned short) = v7;
extern signed short v9 (signed int, signed char, unsigned short);
extern signed short (*v10) (signed int, signed char, unsigned short);
extern unsigned short v11 (signed int, signed short, unsigned char, signed char);
extern unsigned short (*v12) (signed int, signed short, unsigned char, signed char);
extern unsigned int v13 (unsigned char, unsigned int, signed int);
extern unsigned int (*v14) (unsigned char, unsigned int, signed int);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v21 (signed char, signed short);
extern unsigned short (*v22) (signed char, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned char v27 (signed short, unsigned short, signed char, unsigned char);
extern unsigned char (*v28) (signed short, unsigned short, signed char, unsigned char);
extern signed short v29 (signed int, unsigned short, signed int);
extern signed short (*v30) (signed int, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v49 = 1;
signed int v48 = -2;
signed char v47 = -2;

signed char v7 (unsigned char v50, unsigned short v51, unsigned short v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned int v55 = 3U;
unsigned short v54 = 7;
signed short v53 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
