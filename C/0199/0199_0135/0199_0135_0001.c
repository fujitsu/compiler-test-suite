#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed int);
extern unsigned char (*v2) (unsigned short, signed int);
extern signed int v3 (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed int (*v4) (unsigned int, unsigned int, unsigned int, unsigned int);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern unsigned char v9 (unsigned short, signed short);
extern unsigned char (*v10) (unsigned short, signed short);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern signed char v17 (signed short);
extern signed char (*v18) (signed short);
extern void v19 (signed short);
extern void (*v20) (signed short);
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern signed short v25 (signed char, unsigned short);
extern signed short (*v26) (signed char, unsigned short);
extern unsigned char v27 (signed char);
extern unsigned char (*v28) (signed char);
extern void v29 (unsigned char, signed int);
extern void (*v30) (unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v55 = 1;
signed short v54 = -1;
signed char v53 = 0;

unsigned short v5 (void)
{
{
for (;;) {
signed int v58 = 2;
signed short v57 = 0;
signed short v56 = -2;
trace++;
switch (trace)
{
case 11: 
return 3;
default: abort ();
}
}
}
}
