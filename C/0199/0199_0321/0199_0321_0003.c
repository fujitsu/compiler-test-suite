#include <stdlib.h>
extern void v1 (signed short, unsigned int, unsigned char, unsigned int);
extern void (*v2) (signed short, unsigned int, unsigned char, unsigned int);
extern unsigned char v3 (signed char);
extern unsigned char (*v4) (signed char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned char v7 (unsigned int, unsigned char, signed char);
extern unsigned char (*v8) (unsigned int, unsigned char, signed char);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned short v11 (unsigned short, unsigned char, signed int, signed short);
extern unsigned short (*v12) (unsigned short, unsigned char, signed int, signed short);
extern signed int v13 (unsigned char, unsigned char);
extern signed int (*v14) (unsigned char, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (signed char, signed char, signed short);
extern unsigned int (*v18) (signed char, signed char, signed short);
extern unsigned int v19 (unsigned short, signed char, unsigned char, signed short);
extern unsigned int (*v20) (unsigned short, signed char, unsigned char, signed short);
extern unsigned char v21 (signed char, unsigned short);
extern unsigned char (*v22) (signed char, unsigned short);
extern signed int v23 (unsigned int, signed char);
extern signed int (*v24) (unsigned int, signed char);
extern void v25 (unsigned char, unsigned int);
extern void (*v26) (unsigned char, unsigned int);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v113 = 2;
unsigned char v112 = 3;
signed short v111 = 2;

void v29 (void)
{
{
for (;;) {
unsigned short v116 = 1;
signed char v115 = 2;
unsigned char v114 = 4;
trace++;
switch (trace)
{
case 6: 
return;
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}
