#include <stdlib.h>
extern signed char v1 (signed char, signed char, signed char);
extern signed char (*v2) (signed char, signed char, signed char);
extern void v3 (signed char, unsigned int);
extern void (*v4) (signed char, unsigned int);
signed char v5 (signed char);
signed char (*v6) (signed char) = v5;
extern unsigned char v7 (signed char, unsigned short, signed char);
extern unsigned char (*v8) (signed char, unsigned short, signed char);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern unsigned char v11 (signed char, signed int, signed char);
extern unsigned char (*v12) (signed char, signed int, signed char);
extern unsigned char v13 (unsigned int, signed short, unsigned int);
extern unsigned char (*v14) (unsigned int, signed short, unsigned int);
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern unsigned char v21 (signed int, signed short, unsigned int);
extern unsigned char (*v22) (signed int, signed short, unsigned int);
extern signed int v23 (signed char, unsigned char);
extern signed int (*v24) (signed char, unsigned char);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned short v27 (unsigned int, signed int, unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned int, signed int, unsigned char, unsigned short);
extern signed short v29 (unsigned short, unsigned char);
extern signed short (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v139 = 1;
signed short v138 = -4;
unsigned short v137 = 1;

signed char v5 (signed char v140)
{
history[history_index++] = (int)v140;
{
for (;;) {
signed short v143 = 0;
unsigned short v142 = 2;
signed short v141 = 0;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v144;
signed int v145;
unsigned char v146;
unsigned short v147;
unsigned short v148;
v144 = 6U + 3U;
v145 = -2 - 2;
v146 = 7 + 7;
v147 = 2 - v142;
v148 = v27 (v144, v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}
