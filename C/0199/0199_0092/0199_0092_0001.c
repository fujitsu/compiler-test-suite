#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed short v3 (signed int);
extern signed short (*v4) (signed int);
extern signed char v5 (unsigned int, unsigned short, signed char);
extern signed char (*v6) (unsigned int, unsigned short, signed char);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed int v9 (signed short, signed int, unsigned char);
extern signed int (*v10) (signed short, signed int, unsigned char);
extern signed short v11 (unsigned short, signed char, signed int);
extern signed short (*v12) (unsigned short, signed char, signed int);
extern void v13 (void);
extern void (*v14) (void);
extern signed int v15 (unsigned int, signed char, unsigned char);
extern signed int (*v16) (unsigned int, signed char, unsigned char);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (signed int, unsigned char, unsigned int, unsigned char);
extern unsigned char (*v20) (signed int, unsigned char, unsigned int, unsigned char);
signed short v21 (void);
signed short (*v22) (void) = v21;
extern unsigned int v23 (signed short, unsigned char, unsigned short, signed int);
extern unsigned int (*v24) (signed short, unsigned char, unsigned short, signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern void v27 (signed int);
extern void (*v28) (signed int);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v76 = -2;
unsigned short v75 = 1;
unsigned int v74 = 5U;

signed short v21 (void)
{
{
for (;;) {
signed char v79 = -4;
signed short v78 = -4;
unsigned char v77 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v80;
v80 = v79 + v79;
v29 (v80);
}
break;
case 3: 
return v78;
default: abort ();
}
}
}
}
