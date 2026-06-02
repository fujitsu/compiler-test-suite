#include <stdlib.h>
extern unsigned int v1 (signed int, unsigned char, signed char);
extern unsigned int (*v2) (signed int, unsigned char, signed char);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern signed char v5 (signed char, signed int);
extern signed char (*v6) (signed char, signed int);
extern void v7 (void);
extern void (*v8) (void);
extern void v9 (void);
extern void (*v10) (void);
extern signed char v11 (unsigned int, signed int);
extern signed char (*v12) (unsigned int, signed int);
extern signed short v13 (unsigned char, signed char, unsigned char, signed short);
extern signed short (*v14) (unsigned char, signed char, unsigned char, signed short);
extern signed char v15 (unsigned char, signed short);
extern signed char (*v16) (unsigned char, signed short);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern unsigned short v21 (unsigned char, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned int);
extern signed short v23 (signed short, unsigned char, unsigned short);
extern signed short (*v24) (signed short, unsigned char, unsigned short);
extern unsigned short v25 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned int);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
unsigned char v29 (signed char);
unsigned char (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v65 = 3;
unsigned int v64 = 4U;
unsigned int v63 = 0U;

unsigned char v29 (signed char v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = 0;
signed short v68 = -2;
signed int v67 = 0;
trace++;
switch (trace)
{
case 5: 
return 0;
default: abort ();
}
}
}
}
