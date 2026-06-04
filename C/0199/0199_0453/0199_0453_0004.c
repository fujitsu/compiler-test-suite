#include <stdlib.h>
extern unsigned int v3 (signed int, unsigned short, unsigned short, unsigned int);
extern unsigned int (*v4) (signed int, unsigned short, unsigned short, unsigned int);
extern signed short v5 (signed char, signed int);
extern signed short (*v6) (signed char, signed int);
extern signed short v7 (signed int, signed int, unsigned int, unsigned int);
extern signed short (*v8) (signed int, signed int, unsigned int, unsigned int);
extern void v9 (signed int, unsigned short, signed int);
extern void (*v10) (signed int, unsigned short, signed int);
extern signed char v11 (signed int, unsigned short, signed short);
extern signed char (*v12) (signed int, unsigned short, signed short);
extern unsigned short v13 (unsigned int, signed short, signed short, unsigned char);
extern unsigned short (*v14) (unsigned int, signed short, signed short, unsigned char);
extern unsigned short v15 (unsigned char, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v16) (unsigned char, unsigned char, unsigned short, unsigned short);
extern signed int v17 (signed char, unsigned char);
extern signed int (*v18) (signed char, unsigned char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (signed int, unsigned int, unsigned char, unsigned int);
extern signed short (*v22) (signed int, unsigned int, unsigned char, unsigned int);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed short v25 (unsigned int, signed short, signed char, unsigned char);
extern signed short (*v26) (unsigned int, signed short, signed char, unsigned char);
unsigned char v27 (signed char, signed char);
unsigned char (*v28) (signed char, signed char) = v27;
extern unsigned short v29 (signed char, signed char, unsigned char);
extern unsigned short (*v30) (signed char, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v147 = -4;
unsigned short v146 = 2;
signed int v145 = 0;

unsigned char v27 (signed char v148, signed char v149)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
unsigned short v152 = 5;
signed int v151 = -3;
signed short v150 = -2;
trace++;
switch (trace)
{
case 6: 
return 3;
default: abort ();
}
}
}
}
