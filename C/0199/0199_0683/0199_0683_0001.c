#include <stdlib.h>
extern signed char v3 (unsigned short, signed short, unsigned char);
extern signed char (*v4) (unsigned short, signed short, unsigned char);
extern unsigned char v5 (signed char, signed int, unsigned int);
extern unsigned char (*v6) (signed char, signed int, unsigned int);
extern signed int v7 (unsigned int, unsigned short);
extern signed int (*v8) (unsigned int, unsigned short);
extern signed char v9 (signed char);
extern signed char (*v10) (signed char);
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
extern signed int v15 (signed char, signed int, signed int, signed char);
extern signed int (*v16) (signed char, signed int, signed int, signed char);
extern void v17 (unsigned char, signed int);
extern void (*v18) (unsigned char, signed int);
extern void v19 (unsigned short, signed int);
extern void (*v20) (unsigned short, signed int);
extern signed short v21 (unsigned char, unsigned short, unsigned short);
extern signed short (*v22) (unsigned char, unsigned short, unsigned short);
extern unsigned short v23 (unsigned short);
extern unsigned short (*v24) (unsigned short);
extern signed int v27 (void);
extern signed int (*v28) (void);
unsigned char v29 (unsigned int);
unsigned char (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v65 = 6;
signed short v64 = 3;
unsigned int v63 = 4U;

unsigned char v29 (unsigned int v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = 0;
signed int v68 = 1;
unsigned int v67 = 2U;
trace++;
switch (trace)
{
case 3: 
return 3;
case 8: 
return 0;
case 10: 
return 7;
default: abort ();
}
}
}
}
