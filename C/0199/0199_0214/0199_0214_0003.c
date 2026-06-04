#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned int v7 (unsigned char, signed int, signed char, unsigned short);
extern unsigned int (*v8) (unsigned char, signed int, signed char, unsigned short);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed char v21 (signed short, signed short);
extern signed char (*v22) (signed short, signed short);
extern signed short v23 (signed short, signed char, unsigned int);
extern signed short (*v24) (signed short, signed char, unsigned int);
extern unsigned int v25 (signed char, unsigned short, unsigned short);
extern unsigned int (*v26) (signed char, unsigned short, unsigned short);
extern signed short v27 (unsigned char, unsigned int);
extern signed short (*v28) (unsigned char, unsigned int);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v95 = 5U;
signed int v94 = -1;
unsigned short v93 = 5;

unsigned char v19 (void)
{
{
for (;;) {
signed char v98 = 3;
unsigned short v97 = 4;
signed int v96 = -3;
trace++;
switch (trace)
{
case 11: 
return 4;
default: abort ();
}
}
}
}
