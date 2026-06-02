#include <stdlib.h>
signed int v3 (unsigned short, unsigned int);
signed int (*v4) (unsigned short, unsigned int) = v3;
extern signed short v7 (unsigned char, signed int, signed char, unsigned short);
extern signed short (*v8) (unsigned char, signed int, signed char, unsigned short);
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned int v15 (signed char, unsigned int, unsigned short);
extern unsigned int (*v16) (signed char, unsigned int, unsigned short);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (signed char, unsigned short, unsigned int, unsigned int);
extern signed char (*v22) (signed char, unsigned short, unsigned int, unsigned int);
extern unsigned int v23 (signed short, unsigned int, signed int, signed short);
extern unsigned int (*v24) (signed short, unsigned int, signed int, signed short);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
extern unsigned int v27 (signed int, unsigned short);
extern unsigned int (*v28) (signed int, unsigned short);
extern signed short v29 (signed short);
extern signed short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v142 = 2U;
unsigned char v141 = 7;
signed char v140 = 0;

signed int v3 (unsigned short v143, unsigned int v144)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned char v147 = 0;
signed char v146 = -1;
signed int v145 = -4;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}
