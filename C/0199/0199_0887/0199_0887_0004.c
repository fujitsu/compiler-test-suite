#include <stdlib.h>
extern void v1 (signed char, unsigned short);
extern void (*v2) (signed char, unsigned short);
extern signed short v3 (signed char, signed char, unsigned int);
extern signed short (*v4) (signed char, signed char, unsigned int);
extern void v7 (signed int, unsigned int, unsigned short, signed short);
extern void (*v8) (signed int, unsigned int, unsigned short, signed short);
extern unsigned char v9 (unsigned char, unsigned short);
extern unsigned char (*v10) (unsigned char, unsigned short);
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
extern signed char v15 (unsigned char, unsigned char);
extern signed char (*v16) (unsigned char, unsigned char);
extern unsigned short v17 (signed int);
extern unsigned short (*v18) (signed int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
extern void v27 (signed short);
extern void (*v28) (signed short);
unsigned short v29 (signed char);
unsigned short (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v134 = -1;
signed int v133 = -2;
signed char v132 = -2;

unsigned short v29 (signed char v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = -3;
signed char v137 = 3;
unsigned int v136 = 3U;
trace++;
switch (trace)
{
case 9: 
return 7;
default: abort ();
}
}
}
}
