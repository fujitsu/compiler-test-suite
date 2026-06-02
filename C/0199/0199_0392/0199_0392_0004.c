#include <stdlib.h>
extern signed int v1 (signed short, unsigned int, unsigned char);
extern signed int (*v2) (signed short, unsigned int, unsigned char);
extern void v3 (signed short, unsigned int, signed char);
extern void (*v4) (signed short, unsigned int, signed char);
extern unsigned char v7 (signed char, signed short, unsigned int, signed char);
extern unsigned char (*v8) (signed char, signed short, unsigned int, signed char);
extern unsigned short v9 (signed short, unsigned int, unsigned int);
extern unsigned short (*v10) (signed short, unsigned int, unsigned int);
extern unsigned char v11 (unsigned int, signed int);
extern unsigned char (*v12) (unsigned int, signed int);
extern unsigned int v13 (signed int, signed char);
extern unsigned int (*v14) (signed int, signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed int v19 (signed short, signed int, signed int, unsigned short);
extern signed int (*v20) (signed short, signed int, signed int, unsigned short);
extern unsigned int v21 (signed short, signed short);
extern unsigned int (*v22) (signed short, signed short);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned char v25 (unsigned int);
extern unsigned char (*v26) (unsigned int);
extern unsigned int v27 (unsigned int, unsigned char);
extern unsigned int (*v28) (unsigned int, unsigned char);
unsigned int v29 (unsigned char, unsigned char, signed int);
unsigned int (*v30) (unsigned char, unsigned char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v139 = 0;
unsigned int v138 = 5U;
signed short v137 = -2;

unsigned int v29 (unsigned char v140, unsigned char v141, signed int v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned int v145 = 2U;
unsigned short v144 = 3;
signed int v143 = -3;
trace++;
switch (trace)
{
case 2: 
return v145;
case 11: 
return 3U;
default: abort ();
}
}
}
}
