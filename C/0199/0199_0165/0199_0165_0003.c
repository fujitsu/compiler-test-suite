#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned char v3 (signed short, unsigned int, signed char, unsigned int);
extern unsigned char (*v4) (signed short, unsigned int, signed char, unsigned int);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (unsigned short, signed char);
extern signed int (*v8) (unsigned short, signed char);
extern unsigned short v9 (signed short, signed short, unsigned int, signed short);
extern unsigned short (*v10) (signed short, signed short, unsigned int, signed short);
extern unsigned int v11 (unsigned int, signed int);
extern unsigned int (*v12) (unsigned int, signed int);
extern signed int v13 (signed short, signed short, unsigned int);
extern signed int (*v14) (signed short, signed short, unsigned int);
signed short v15 (unsigned int, signed char);
signed short (*v16) (unsigned int, signed char) = v15;
extern signed int v17 (unsigned char, unsigned short);
extern signed int (*v18) (unsigned char, unsigned short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern void v21 (unsigned char, signed int, signed short, signed char);
extern void (*v22) (unsigned char, signed int, signed short, signed char);
extern void v23 (unsigned int, unsigned short, signed char, signed int);
extern void (*v24) (unsigned int, unsigned short, signed char, signed int);
extern signed short v25 (signed short, unsigned short, signed int, signed int);
extern signed short (*v26) (signed short, unsigned short, signed int, signed int);
extern void v27 (unsigned int, unsigned int, signed char);
extern void (*v28) (unsigned int, unsigned int, signed char);
unsigned short v29 (signed short, signed int, unsigned int);
unsigned short (*v30) (signed short, signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v140 = 2U;
signed short v139 = -3;
unsigned int v138 = 3U;

unsigned short v29 (signed short v141, signed int v142, unsigned int v143)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned char v146 = 3;
signed short v145 = 0;
unsigned short v144 = 5;
trace++;
switch (trace)
{
case 8: 
return 4;
default: abort ();
}
}
}
}

signed short v15 (unsigned int v147, signed char v148)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
unsigned int v151 = 2U;
signed short v150 = 1;
signed int v149 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
