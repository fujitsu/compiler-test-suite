#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned short);
extern unsigned short (*v2) (unsigned short, unsigned short);
extern void v3 (void);
extern void (*v4) (void);
extern signed char v5 (signed char, signed short, unsigned int, unsigned int);
extern signed char (*v6) (signed char, signed short, unsigned int, unsigned int);
extern unsigned short v7 (unsigned int, unsigned short);
extern unsigned short (*v8) (unsigned int, unsigned short);
extern void v9 (void);
extern void (*v10) (void);
extern void v11 (signed int, signed short, signed char, unsigned char);
extern void (*v12) (signed int, signed short, signed char, unsigned char);
extern unsigned char v13 (signed char);
extern unsigned char (*v14) (signed char);
extern void v17 (signed int, unsigned char);
extern void (*v18) (signed int, unsigned char);
extern signed char v19 (signed char, unsigned int, signed int, unsigned short);
extern signed char (*v20) (signed char, unsigned int, signed int, unsigned short);
extern void v21 (unsigned char, unsigned int, unsigned int, signed short);
extern void (*v22) (unsigned char, unsigned int, unsigned int, signed short);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
unsigned int v27 (signed char, unsigned short, unsigned int, unsigned char);
unsigned int (*v28) (signed char, unsigned short, unsigned int, unsigned char) = v27;
extern void v29 (unsigned int, unsigned char, unsigned char);
extern void (*v30) (unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v48 = -4;
unsigned short v47 = 7;
signed int v46 = 1;

unsigned int v27 (signed char v49, unsigned short v50, unsigned int v51, unsigned char v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed int v55 = -3;
signed int v54 = -1;
unsigned char v53 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
