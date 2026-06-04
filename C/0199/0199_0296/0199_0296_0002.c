#include <stdlib.h>
extern void v1 (signed int, signed char, unsigned short, signed int);
extern void (*v2) (signed int, signed char, unsigned short, signed int);
extern unsigned short v3 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v4) (unsigned char, unsigned char, unsigned int);
extern void v5 (unsigned char);
extern void (*v6) (unsigned char);
extern signed char v7 (signed char, unsigned char, signed short, signed int);
extern signed char (*v8) (signed char, unsigned char, signed short, signed int);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed char v11 (unsigned short, signed char);
extern signed char (*v12) (unsigned short, signed char);
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
extern signed int v15 (signed int, signed short, signed char);
extern signed int (*v16) (signed int, signed short, signed char);
extern signed short v17 (unsigned char, signed short, signed int);
extern signed short (*v18) (unsigned char, signed short, signed int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern signed char v23 (unsigned char, signed short);
extern signed char (*v24) (unsigned char, signed short);
extern unsigned short v25 (signed char, unsigned char, signed int, unsigned short);
extern unsigned short (*v26) (signed char, unsigned char, signed int, unsigned short);
unsigned int v27 (signed int);
unsigned int (*v28) (signed int) = v27;
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v103 = 7;
unsigned short v102 = 5;
unsigned short v101 = 4;

unsigned int v27 (signed int v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
unsigned short v107 = 5;
unsigned char v106 = 4;
unsigned short v105 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
