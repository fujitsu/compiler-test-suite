#include <stdlib.h>
extern unsigned int v1 (signed int, signed short, unsigned short, unsigned char);
extern unsigned int (*v2) (signed int, signed short, unsigned short, unsigned char);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
extern unsigned int v13 (signed int, unsigned int);
extern unsigned int (*v14) (signed int, unsigned int);
extern signed int v15 (signed char, signed short);
extern signed int (*v16) (signed char, signed short);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern unsigned char v19 (unsigned char, unsigned int);
extern unsigned char (*v20) (unsigned char, unsigned int);
unsigned short v21 (unsigned short, unsigned short);
unsigned short (*v22) (unsigned short, unsigned short) = v21;
extern signed short v23 (signed int, unsigned int, signed int, signed char);
extern signed short (*v24) (signed int, unsigned int, signed int, signed char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned int v27 (unsigned char, unsigned short);
extern unsigned int (*v28) (unsigned char, unsigned short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v134 = 4;
unsigned char v133 = 2;
signed int v132 = -2;

unsigned short v21 (unsigned short v135, unsigned short v136)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned int v139 = 1U;
signed short v138 = -3;
signed char v137 = 1;
trace++;
switch (trace)
{
case 7: 
return v135;
default: abort ();
}
}
}
}
