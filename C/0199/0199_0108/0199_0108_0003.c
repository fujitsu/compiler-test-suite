#include <stdlib.h>
extern signed char v1 (unsigned char);
extern signed char (*v2) (unsigned char);
extern unsigned short v3 (signed char, signed char, signed short);
extern unsigned short (*v4) (signed char, signed char, signed short);
extern signed char v5 (signed short, unsigned char);
extern signed char (*v6) (signed short, unsigned char);
extern signed int v7 (signed int, unsigned int, signed int);
extern signed int (*v8) (signed int, unsigned int, signed int);
extern unsigned short v9 (signed short, unsigned short, unsigned short, unsigned int);
extern unsigned short (*v10) (signed short, unsigned short, unsigned short, unsigned int);
extern signed short v11 (signed char, signed short);
extern signed short (*v12) (signed char, signed short);
extern void v13 (void);
extern void (*v14) (void);
extern signed short v15 (unsigned int, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (signed char, signed short, signed int, signed int);
extern unsigned int (*v22) (signed char, signed short, signed int, signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned char v25 (signed char, signed short, signed short);
extern unsigned char (*v26) (signed char, signed short, signed short);
extern signed short v27 (unsigned short, signed short, signed short, signed short);
extern signed short (*v28) (unsigned short, signed short, signed short, signed short);
signed char v29 (signed int, unsigned int, unsigned char, unsigned int);
signed char (*v30) (signed int, unsigned int, unsigned char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v100 = 7U;
unsigned char v99 = 3;
signed short v98 = -4;

signed char v29 (signed int v101, unsigned int v102, unsigned char v103, unsigned int v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned int v107 = 5U;
signed int v106 = -2;
unsigned int v105 = 6U;
trace++;
switch (trace)
{
case 1: 
return -3;
default: abort ();
}
}
}
}
