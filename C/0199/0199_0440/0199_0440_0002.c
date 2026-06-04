#include <stdlib.h>
extern unsigned int v3 (unsigned short, signed char, signed short, unsigned int);
extern unsigned int (*v4) (unsigned short, signed char, signed short, unsigned int);
extern void v5 (unsigned short, signed char);
extern void (*v6) (unsigned short, signed char);
extern unsigned short v7 (signed int, signed short);
extern unsigned short (*v8) (signed int, signed short);
extern unsigned short v9 (signed char, unsigned char, unsigned int);
extern unsigned short (*v10) (signed char, unsigned char, unsigned int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
extern unsigned short v15 (signed int, unsigned int, unsigned char);
extern unsigned short (*v16) (signed int, unsigned int, unsigned char);
extern signed short v17 (signed char, signed char, signed int);
extern signed short (*v18) (signed char, signed char, signed int);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (signed short, signed short);
extern signed char (*v22) (signed short, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (unsigned int, signed int);
extern unsigned char (*v26) (unsigned int, signed int);
signed int v27 (signed int, unsigned short, signed int, unsigned int);
signed int (*v28) (signed int, unsigned short, signed int, unsigned int) = v27;
extern signed char v29 (signed int, signed char, signed int, unsigned short);
extern signed char (*v30) (signed int, signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v78 = 2;
signed char v77 = 2;
signed char v76 = 1;

signed int v27 (signed int v79, unsigned short v80, signed int v81, unsigned int v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 7;
unsigned short v84 = 6;
unsigned char v83 = 5;
trace++;
switch (trace)
{
case 7: 
return v79;
default: abort ();
}
}
}
}
