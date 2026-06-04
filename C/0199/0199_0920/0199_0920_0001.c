#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned short v3 (signed int, signed char);
extern unsigned short (*v4) (signed int, signed char);
extern void v5 (signed char);
extern void (*v6) (signed char);
extern unsigned short v7 (signed char);
extern unsigned short (*v8) (signed char);
extern signed int v9 (unsigned char, unsigned char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned char, unsigned int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned int v13 (signed short, signed int, signed int, signed int);
extern unsigned int (*v14) (signed short, signed int, signed int, signed int);
extern unsigned char v15 (signed int, unsigned char);
extern unsigned char (*v16) (signed int, unsigned char);
extern unsigned short v17 (signed short, signed int, signed char);
extern unsigned short (*v18) (signed short, signed int, signed char);
extern void v19 (void);
extern void (*v20) (void);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern signed int v23 (unsigned int, signed char);
extern signed int (*v24) (unsigned int, signed char);
extern unsigned short v25 (unsigned int, unsigned int, unsigned int, signed char);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned int, signed char);
extern signed int v27 (signed char, signed int, unsigned short);
extern signed int (*v28) (signed char, signed int, unsigned short);
unsigned char v29 (unsigned int);
unsigned char (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v57 = -3;
unsigned char v56 = 5;
signed short v55 = -2;

unsigned char v29 (unsigned int v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
signed short v61 = 2;
signed short v60 = -1;
signed char v59 = -3;
trace++;
switch (trace)
{
case 7: 
return 6;
default: abort ();
}
}
}
}
