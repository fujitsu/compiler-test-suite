#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
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
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v64 = 2;
signed char v63 = -2;
signed char v62 = -4;

signed int v1 (void)
{
{
for (;;) {
signed char v67 = 0;
unsigned int v66 = 1U;
unsigned char v65 = 4;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v68;
unsigned char v69;
unsigned int v70;
signed int v71;
v68 = v65 - 4;
v69 = v65 - v65;
v70 = 6U - v66;
v71 = v9 (v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
