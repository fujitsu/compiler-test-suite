#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned int);
extern signed short (*v4) (unsigned short, unsigned int);
unsigned short v5 (signed int);
unsigned short (*v6) (signed int) = v5;
extern unsigned char v9 (unsigned char, signed short);
extern unsigned char (*v10) (unsigned char, signed short);
extern signed int v11 (signed char, signed char, unsigned short, signed char);
extern signed int (*v12) (signed char, signed char, unsigned short, signed char);
extern void v13 (unsigned char, unsigned short, unsigned int, signed char);
extern void (*v14) (unsigned char, unsigned short, unsigned int, signed char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (signed int, signed int, unsigned int);
extern unsigned int (*v18) (signed int, signed int, unsigned int);
extern unsigned int v19 (unsigned int);
extern unsigned int (*v20) (unsigned int);
extern signed int v23 (signed char, signed int, unsigned int, signed int);
extern signed int (*v24) (signed char, signed int, unsigned int, signed int);
extern signed char v25 (unsigned int, signed int, signed int, signed short);
extern signed char (*v26) (unsigned int, signed int, signed int, signed short);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v89 = -3;
signed char v88 = -4;
unsigned short v87 = 7;

unsigned short v5 (signed int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 0;
unsigned int v92 = 1U;
unsigned int v91 = 0U;
trace++;
switch (trace)
{
case 1: 
return 5;
default: abort ();
}
}
}
}
