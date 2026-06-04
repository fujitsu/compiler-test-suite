#include <stdlib.h>
extern signed char v1 (unsigned int);
extern signed char (*v2) (unsigned int);
extern signed int v3 (signed short, signed char);
extern signed int (*v4) (signed short, signed char);
extern unsigned int v5 (signed short, signed short, unsigned char, unsigned short);
extern unsigned int (*v6) (signed short, signed short, unsigned char, unsigned short);
extern unsigned short v7 (signed short, signed char);
extern unsigned short (*v8) (signed short, signed char);
extern void v9 (signed int, unsigned int, signed int);
extern void (*v10) (signed int, unsigned int, signed int);
extern signed short v11 (unsigned short, unsigned short);
extern signed short (*v12) (unsigned short, unsigned short);
extern void v13 (signed short, signed int);
extern void (*v14) (signed short, signed int);
extern signed short v15 (unsigned char, signed int, signed int, signed char);
extern signed short (*v16) (unsigned char, signed int, signed int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (signed short, signed int, unsigned char, unsigned short);
extern signed int (*v22) (signed short, signed int, unsigned char, unsigned short);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed int v29 (signed short, signed short, signed short, signed short);
extern signed int (*v30) (signed short, signed short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v129 = 7;
unsigned short v128 = 6;
signed int v127 = -2;

signed short v23 (void)
{
{
for (;;) {
signed int v132 = 0;
unsigned short v131 = 7;
signed int v130 = -2;
trace++;
switch (trace)
{
case 8: 
return 2;
default: abort ();
}
}
}
}
