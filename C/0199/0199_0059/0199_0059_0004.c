#include <stdlib.h>
extern void v1 (signed int);
extern void (*v2) (signed int);
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
extern unsigned short v5 (signed short, unsigned char, signed short, signed short);
extern unsigned short (*v6) (signed short, unsigned char, signed short, signed short);
extern unsigned short v7 (unsigned short, unsigned char);
extern unsigned short (*v8) (unsigned short, unsigned char);
extern unsigned int v11 (unsigned short, unsigned char, unsigned short, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned char, unsigned short, unsigned int);
extern signed short v13 (signed short);
extern signed short (*v14) (signed short);
extern signed short v15 (unsigned short);
extern signed short (*v16) (unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern void v19 (unsigned char, unsigned char, signed short);
extern void (*v20) (unsigned char, unsigned char, signed short);
extern unsigned short v21 (unsigned short, unsigned int, signed char);
extern unsigned short (*v22) (unsigned short, unsigned int, signed char);
extern unsigned char v23 (unsigned int, unsigned char, unsigned short);
extern unsigned char (*v24) (unsigned int, unsigned char, unsigned short);
signed int v25 (void);
signed int (*v26) (void) = v25;
extern unsigned int v27 (signed short, signed int);
extern unsigned int (*v28) (signed short, signed int);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v128 = -3;
signed int v127 = 0;
signed short v126 = -3;

signed int v25 (void)
{
{
for (;;) {
unsigned char v131 = 1;
unsigned char v130 = 4;
unsigned short v129 = 6;
trace++;
switch (trace)
{
case 5: 
return -3;
default: abort ();
}
}
}
}
