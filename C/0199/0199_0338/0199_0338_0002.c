#include <stdlib.h>
extern signed short v1 (signed char, signed char);
extern signed short (*v2) (signed char, signed char);
extern signed char v3 (unsigned char, signed int);
extern signed char (*v4) (unsigned char, signed int);
extern signed int v5 (unsigned int, unsigned short);
extern signed int (*v6) (unsigned int, unsigned short);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
unsigned int v9 (unsigned short);
unsigned int (*v10) (unsigned short) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern unsigned short v17 (unsigned short, unsigned int, signed int, signed char);
extern unsigned short (*v18) (unsigned short, unsigned int, signed int, signed char);
extern void v19 (signed short);
extern void (*v20) (signed short);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed int v25 (unsigned int, unsigned short, unsigned char);
extern signed int (*v26) (unsigned int, unsigned short, unsigned char);
extern signed int v27 (unsigned short, unsigned short, signed int);
extern signed int (*v28) (unsigned short, unsigned short, signed int);
extern unsigned short v29 (signed char, signed short);
extern unsigned short (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v102 = -2;
signed char v101 = 3;
signed short v100 = -2;

unsigned int v9 (unsigned short v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = 1;
unsigned short v105 = 2;
signed char v104 = 1;
trace++;
switch (trace)
{
case 11: 
return 7U;
default: abort ();
}
}
}
}
