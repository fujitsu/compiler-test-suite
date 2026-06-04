#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
extern signed short v7 (unsigned char);
extern signed short (*v8) (unsigned char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
extern signed int v15 (void);
extern signed int (*v16) (void);
signed short v17 (unsigned int);
signed short (*v18) (unsigned int) = v17;
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (signed short);
extern signed char (*v22) (signed short);
extern void v25 (unsigned char, unsigned int, signed int, signed short);
extern void (*v26) (unsigned char, unsigned int, signed int, signed short);
extern unsigned char v27 (unsigned int, unsigned char);
extern unsigned char (*v28) (unsigned int, unsigned char);
extern unsigned short v29 (unsigned short, signed char);
extern unsigned short (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v89 = 1U;
signed short v88 = -2;
unsigned short v87 = 2;

signed short v17 (unsigned int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 4;
signed short v92 = 0;
unsigned short v91 = 0;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v94;
unsigned char v95;
unsigned char v96;
v94 = v90 - v90;
v95 = 4 - 7;
v96 = v27 (v94, v95);
history[history_index++] = (int)v96;
}
break;
case 12: 
return v92;
default: abort ();
}
}
}
}
