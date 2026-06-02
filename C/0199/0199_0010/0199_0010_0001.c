#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (unsigned int, signed short, signed char);
extern void (*v4) (unsigned int, signed short, signed char);
extern unsigned short v5 (unsigned int);
extern unsigned short (*v6) (unsigned int);
extern unsigned short v7 (signed char);
extern unsigned short (*v8) (signed char);
extern unsigned int v9 (signed short, unsigned short, signed short, signed int);
extern unsigned int (*v10) (signed short, unsigned short, signed short, signed int);
signed char v11 (signed int, signed short, unsigned char, unsigned int);
signed char (*v12) (signed int, signed short, unsigned char, unsigned int) = v11;
extern signed char v13 (signed int, unsigned short, signed short, unsigned int);
extern signed char (*v14) (signed int, unsigned short, signed short, unsigned int);
extern void v15 (signed char, unsigned char, signed short);
extern void (*v16) (signed char, unsigned char, signed short);
extern signed short v17 (unsigned short, signed char, signed int);
extern signed short (*v18) (unsigned short, signed char, signed int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (unsigned char, signed short);
extern unsigned int (*v22) (unsigned char, signed short);
extern unsigned short v23 (signed short, signed short, unsigned short, unsigned int);
extern unsigned short (*v24) (signed short, signed short, unsigned short, unsigned int);
extern unsigned short v27 (signed int, unsigned char, unsigned int);
extern unsigned short (*v28) (signed int, unsigned char, unsigned int);
extern void v29 (signed short, unsigned int, signed char);
extern void (*v30) (signed short, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v50 = 2;
unsigned int v49 = 3U;
unsigned char v48 = 3;

signed char v11 (signed int v51, signed short v52, unsigned char v53, unsigned int v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 7;
signed short v56 = 3;
signed char v55 = -2;
trace++;
switch (trace)
{
case 1: 
return v55;
default: abort ();
}
}
}
}
