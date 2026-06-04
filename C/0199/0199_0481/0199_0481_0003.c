#include <stdlib.h>
extern unsigned short v1 (signed char, signed int, signed char);
extern unsigned short (*v2) (signed char, signed int, signed char);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern signed int v9 (signed char, signed char);
extern signed int (*v10) (signed char, signed char);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (signed short, signed int, signed short);
extern unsigned char (*v16) (signed short, signed int, signed short);
extern unsigned char v17 (signed short, signed char, signed short, unsigned int);
extern unsigned char (*v18) (signed short, signed char, signed short, unsigned int);
unsigned char v19 (signed int);
unsigned char (*v20) (signed int) = v19;
extern signed short v21 (signed short, unsigned short);
extern signed short (*v22) (signed short, unsigned short);
extern void v23 (unsigned short, unsigned short, signed char, signed short);
extern void (*v24) (unsigned short, unsigned short, signed char, signed short);
extern unsigned char v25 (unsigned short, unsigned short, signed int, unsigned short);
extern unsigned char (*v26) (unsigned short, unsigned short, signed int, unsigned short);
extern signed char v27 (unsigned int, unsigned short);
extern signed char (*v28) (unsigned int, unsigned short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v122 = 1;
signed int v121 = -1;
unsigned short v120 = 5;

unsigned char v19 (signed int v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 4;
unsigned short v125 = 3;
signed char v124 = -3;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}
