#include <stdlib.h>
signed short v1 (signed int, unsigned char);
signed short (*v2) (signed int, unsigned char) = v1;
extern unsigned int v3 (signed int, unsigned short, unsigned short, unsigned char);
extern unsigned int (*v4) (signed int, unsigned short, unsigned short, unsigned char);
extern signed char v5 (unsigned short, signed int);
extern signed char (*v6) (unsigned short, signed int);
extern unsigned int v7 (signed short, unsigned short, signed short);
extern unsigned int (*v8) (signed short, unsigned short, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern void v11 (signed short, signed short, unsigned int);
extern void (*v12) (signed short, signed short, unsigned int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern signed int v19 (signed short, unsigned char, signed int, unsigned short);
extern signed int (*v20) (signed short, unsigned char, signed int, unsigned short);
extern signed char v21 (signed short, unsigned short, signed int, unsigned int);
extern signed char (*v22) (signed short, unsigned short, signed int, unsigned int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed char v27 (unsigned char, signed int);
extern signed char (*v28) (unsigned char, signed int);
extern unsigned int v29 (signed int, unsigned int);
extern unsigned int (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v63 = 2U;
signed int v62 = 2;
unsigned int v61 = 1U;

signed short v1 (signed int v64, unsigned char v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed int v68 = -2;
signed int v67 = 1;
signed char v66 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v69;
signed int v70;
signed char v71;
v69 = v65 - v65;
v70 = v64 - v64;
v71 = v27 (v69, v70);
history[history_index++] = (int)v71;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
