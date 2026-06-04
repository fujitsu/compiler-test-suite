#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern unsigned int v3 (signed short, unsigned short);
extern unsigned int (*v4) (signed short, unsigned short);
extern signed short v5 (signed short, signed short, signed int, unsigned short);
extern signed short (*v6) (signed short, signed short, signed int, unsigned short);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed short v9 (signed int, signed short, signed short);
extern signed short (*v10) (signed int, signed short, signed short);
extern signed short v11 (signed short, signed short);
extern signed short (*v12) (signed short, signed short);
extern unsigned short v13 (unsigned int, signed short);
extern unsigned short (*v14) (unsigned int, signed short);
extern signed short v15 (unsigned char, signed int, unsigned short);
extern signed short (*v16) (unsigned char, signed int, unsigned short);
extern void v17 (unsigned int, unsigned int);
extern void (*v18) (unsigned int, unsigned int);
extern signed char v19 (signed int, signed int, unsigned int);
extern signed char (*v20) (signed int, signed int, unsigned int);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern void v25 (unsigned int, signed int);
extern void (*v26) (unsigned int, signed int);
extern unsigned int v27 (signed short, signed int, signed short, signed short);
extern unsigned int (*v28) (signed short, signed int, signed short, signed short);
extern unsigned int v29 (signed char, unsigned char, unsigned short);
extern unsigned int (*v30) (signed char, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v69 = -3;
unsigned char v68 = 5;
unsigned short v67 = 7;

unsigned char v1 (void)
{
{
for (;;) {
signed short v72 = -2;
signed char v71 = -2;
unsigned short v70 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed char v73;
v73 = v7 ();
history[history_index++] = (int)v73;
}
break;
case 14: 
return 4;
default: abort ();
}
}
}
}
