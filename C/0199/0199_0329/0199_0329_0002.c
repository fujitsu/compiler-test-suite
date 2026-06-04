#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern unsigned short v5 (signed char, signed int, signed int);
extern unsigned short (*v6) (signed char, signed int, signed int);
extern void v7 (signed int, unsigned short, signed char);
extern void (*v8) (signed int, unsigned short, signed char);
extern unsigned short v9 (signed short);
extern unsigned short (*v10) (signed short);
extern signed int v11 (signed short, signed short, signed int);
extern signed int (*v12) (signed short, signed short, signed int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (signed int, signed int, unsigned short);
extern signed short (*v16) (signed int, signed int, unsigned short);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned short v19 (signed int, signed char, signed char);
extern unsigned short (*v20) (signed int, signed char, signed char);
extern void v21 (signed char, unsigned int, unsigned char, signed int);
extern void (*v22) (signed char, unsigned int, unsigned char, signed int);
signed char v23 (void);
signed char (*v24) (void) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v27 (unsigned int, unsigned short);
extern unsigned short (*v28) (unsigned int, unsigned short);
extern unsigned int v29 (unsigned int);
extern unsigned int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v79 = 3;
unsigned int v78 = 0U;
signed char v77 = -4;

signed char v23 (void)
{
{
for (;;) {
unsigned char v82 = 0;
unsigned int v81 = 2U;
unsigned short v80 = 6;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v83;
unsigned short v84;
unsigned short v85;
v83 = 1U + v81;
v84 = v80 + 1;
v85 = v27 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 10: 
return 1;
default: abort ();
}
}
}
}
