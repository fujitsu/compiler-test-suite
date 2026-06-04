#include <stdlib.h>
extern signed short v1 (signed char, unsigned int, unsigned short);
extern signed short (*v2) (signed char, unsigned int, unsigned short);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern unsigned char v5 (signed char, signed short);
extern unsigned char (*v6) (signed char, signed short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned char v9 (signed int, unsigned int);
extern unsigned char (*v10) (signed int, unsigned int);
extern unsigned short v11 (unsigned short, unsigned short, unsigned int);
extern unsigned short (*v12) (unsigned short, unsigned short, unsigned int);
extern unsigned char v13 (unsigned int, unsigned char, signed int);
extern unsigned char (*v14) (unsigned int, unsigned char, signed int);
extern signed int v15 (signed short, signed short, unsigned char, signed char);
extern signed int (*v16) (signed short, signed short, unsigned char, signed char);
extern signed short v17 (signed short, unsigned char, signed char);
extern signed short (*v18) (signed short, unsigned char, signed char);
extern unsigned char v19 (unsigned char, unsigned char, signed short);
extern unsigned char (*v20) (unsigned char, unsigned char, signed short);
extern unsigned int v21 (unsigned int);
extern unsigned int (*v22) (unsigned int);
extern void v23 (unsigned int, signed int, signed short, signed short);
extern void (*v24) (unsigned int, signed int, signed short, signed short);
signed char v25 (unsigned int, unsigned char, signed short);
signed char (*v26) (unsigned int, unsigned char, signed short) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern signed char v29 (unsigned int);
extern signed char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v125 = 2U;
unsigned int v124 = 4U;
signed short v123 = -1;

signed char v25 (unsigned int v126, unsigned char v127, signed short v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = -4;
signed short v130 = 3;
unsigned short v129 = 0;
trace++;
switch (trace)
{
case 5: 
return 1;
default: abort ();
}
}
}
}
