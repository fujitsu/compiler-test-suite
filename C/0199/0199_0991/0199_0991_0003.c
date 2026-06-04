#include <stdlib.h>
void v3 (signed short);
void (*v4) (signed short) = v3;
extern signed char v5 (unsigned short, signed int, signed int);
extern signed char (*v6) (unsigned short, signed int, signed int);
extern unsigned int v7 (unsigned short, unsigned char);
extern unsigned int (*v8) (unsigned short, unsigned char);
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern signed int v13 (signed char, unsigned char, unsigned int);
extern signed int (*v14) (signed char, unsigned char, unsigned int);
extern signed int v15 (unsigned short, signed short, unsigned short, signed int);
extern signed int (*v16) (unsigned short, signed short, unsigned short, signed int);
extern unsigned short v17 (signed char, unsigned int);
extern unsigned short (*v18) (signed char, unsigned int);
extern unsigned char v19 (unsigned short);
extern unsigned char (*v20) (unsigned short);
extern unsigned short v21 (signed int, signed int, signed short);
extern unsigned short (*v22) (signed int, signed int, signed short);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (signed int, unsigned char, signed short, signed int);
extern void (*v28) (signed int, unsigned char, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v113 = 3;
unsigned short v112 = 4;
unsigned int v111 = 2U;

void v3 (signed short v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = -4;
unsigned short v116 = 1;
signed short v115 = -2;
trace++;
switch (trace)
{
case 5: 
{
v23 ();
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
