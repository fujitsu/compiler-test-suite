#include <stdlib.h>
extern signed short v1 (signed short, unsigned short, signed char, signed char);
extern signed short (*v2) (signed short, unsigned short, signed char, signed char);
extern unsigned int v3 (signed char, unsigned char, unsigned short);
extern unsigned int (*v4) (signed char, unsigned char, unsigned short);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern unsigned char v7 (unsigned short, unsigned short, signed char);
extern unsigned char (*v8) (unsigned short, unsigned short, signed char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
extern signed char v13 (signed short, signed char, signed char);
extern signed char (*v14) (signed short, signed char, signed char);
extern signed short v15 (unsigned short, unsigned char, signed char, unsigned char);
extern signed short (*v16) (unsigned short, unsigned char, signed char, unsigned char);
extern unsigned short v17 (unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned short);
extern signed char v19 (unsigned short, unsigned char, unsigned short, signed int);
extern signed char (*v20) (unsigned short, unsigned char, unsigned short, signed int);
extern void v21 (signed int, unsigned char, signed short, signed char);
extern void (*v22) (signed int, unsigned char, signed short, signed char);
extern signed char v23 (signed int, signed short);
extern signed char (*v24) (signed int, signed short);
unsigned int v25 (unsigned char);
unsigned int (*v26) (unsigned char) = v25;
extern unsigned char v27 (signed short, unsigned short, signed char, unsigned short);
extern unsigned char (*v28) (signed short, unsigned short, signed char, unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v149 = 1;
signed int v148 = 2;
unsigned int v147 = 4U;

unsigned int v25 (unsigned char v150)
{
history[history_index++] = (int)v150;
{
for (;;) {
signed int v153 = -4;
unsigned short v152 = 2;
signed int v151 = 0;
trace++;
switch (trace)
{
case 4: 
return 4U;
case 6: 
{
signed short v154;
unsigned short v155;
signed char v156;
unsigned short v157;
unsigned char v158;
v154 = 2 + -3;
v155 = 2 + v152;
v156 = -4 - 3;
v157 = 1 - v152;
v158 = v27 (v154, v155, v156, v157);
history[history_index++] = (int)v158;
}
break;
case 8: 
return 1U;
default: abort ();
}
}
}
}
