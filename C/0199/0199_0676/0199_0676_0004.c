#include <stdlib.h>
extern signed short v1 (signed short, signed char, signed short);
extern signed short (*v2) (signed short, signed char, signed short);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed char v7 (unsigned short, signed short, unsigned char, unsigned char);
extern signed char (*v8) (unsigned short, signed short, unsigned char, unsigned char);
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern void v19 (signed char);
extern void (*v20) (signed char);
extern unsigned int v23 (unsigned char, unsigned short, unsigned int);
extern unsigned int (*v24) (unsigned char, unsigned short, unsigned int);
extern signed char v25 (unsigned short, unsigned int, signed char, unsigned short);
extern signed char (*v26) (unsigned short, unsigned int, signed char, unsigned short);
extern unsigned int v27 (signed char, signed char, signed int);
extern unsigned int (*v28) (signed char, signed char, signed int);
signed short v29 (signed char, unsigned short, signed int, signed char);
signed short (*v30) (signed char, unsigned short, signed int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v139 = 2;
unsigned int v138 = 5U;
unsigned int v137 = 6U;

signed short v29 (signed char v140, unsigned short v141, signed int v142, signed char v143)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned short v146 = 4;
unsigned short v145 = 2;
unsigned char v144 = 2;
trace++;
switch (trace)
{
case 7: 
return -2;
case 9: 
return 0;
case 11: 
return 1;
default: abort ();
}
}
}
}
