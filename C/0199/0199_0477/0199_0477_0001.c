#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v2) (unsigned short, unsigned int, unsigned char, unsigned short);
extern signed short v3 (unsigned int, signed char, unsigned short);
extern signed short (*v4) (unsigned int, signed char, unsigned short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (unsigned char, signed int);
extern unsigned int (*v8) (unsigned char, signed int);
extern signed short v9 (unsigned char, signed char, unsigned short);
extern signed short (*v10) (unsigned char, signed char, unsigned short);
extern signed short v11 (unsigned short, unsigned short);
extern signed short (*v12) (unsigned short, unsigned short);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern signed short v15 (signed char, signed int, signed short, unsigned int);
extern signed short (*v16) (signed char, signed int, signed short, unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed short v19 (signed char, signed char);
extern signed short (*v20) (signed char, signed char);
unsigned short v21 (signed int);
unsigned short (*v22) (signed int) = v21;
extern signed char v23 (signed char, unsigned char, signed short);
extern signed char (*v24) (signed char, unsigned char, signed short);
extern signed char v25 (signed short, unsigned int);
extern signed char (*v26) (signed short, unsigned int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern void v29 (signed char, unsigned short);
extern void (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v56 = 4U;
signed char v55 = -4;
signed int v54 = -4;

unsigned short v21 (signed int v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
signed short v60 = -2;
signed char v59 = 3;
signed int v58 = 1;
trace++;
switch (trace)
{
case 5: 
return 5;
default: abort ();
}
}
}
}
