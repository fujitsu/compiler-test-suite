#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned int, signed short);
extern unsigned int (*v2) (signed short, unsigned int, signed short);
extern void v3 (unsigned char, signed int);
extern void (*v4) (unsigned char, signed int);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern signed short v7 (unsigned char, signed short, unsigned char, unsigned int);
extern signed short (*v8) (unsigned char, signed short, unsigned char, unsigned int);
extern signed int v9 (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed int (*v10) (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed short v11 (signed short, signed short);
extern signed short (*v12) (signed short, signed short);
extern unsigned int v13 (signed short, unsigned int, unsigned short);
extern unsigned int (*v14) (signed short, unsigned int, unsigned short);
extern void v15 (unsigned short, signed short, unsigned int, unsigned short);
extern void (*v16) (unsigned short, signed short, unsigned int, unsigned short);
extern unsigned char v17 (unsigned int, unsigned int, unsigned char);
extern unsigned char (*v18) (unsigned int, unsigned int, unsigned char);
unsigned short v19 (signed int);
unsigned short (*v20) (signed int) = v19;
extern void v21 (signed short, signed short, unsigned short, signed int);
extern void (*v22) (signed short, signed short, unsigned short, signed int);
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (unsigned char, signed short);
extern signed int (*v28) (unsigned char, signed short);
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v143 = -2;
signed short v142 = -4;
unsigned int v141 = 3U;

unsigned short v19 (signed int v144)
{
history[history_index++] = (int)v144;
{
for (;;) {
signed short v147 = -2;
signed int v146 = 3;
signed short v145 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v148;
unsigned int v149;
v148 = 0 - 2;
v149 = v23 (v148);
history[history_index++] = (int)v149;
}
break;
case 17: 
return 5;
default: abort ();
}
}
}
}
