#include <stdlib.h>
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed short v5 (signed char, unsigned char, unsigned short, signed short);
extern signed short (*v6) (signed char, unsigned char, unsigned short, signed short);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned int, unsigned short, signed char);
extern unsigned int (*v10) (unsigned short, unsigned int, unsigned short, signed char);
extern unsigned short v11 (unsigned char, signed char);
extern unsigned short (*v12) (unsigned char, signed char);
extern signed char v13 (unsigned short, signed char, unsigned short, signed char);
extern signed char (*v14) (unsigned short, signed char, unsigned short, signed char);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (unsigned char);
extern unsigned short (*v20) (unsigned char);
extern unsigned char v21 (signed short, signed short);
extern unsigned char (*v22) (signed short, signed short);
extern signed int v23 (unsigned short, unsigned short);
extern signed int (*v24) (unsigned short, unsigned short);
extern void v25 (signed char, unsigned char, unsigned int);
extern void (*v26) (signed char, unsigned char, unsigned int);
unsigned char v27 (signed short, unsigned short);
unsigned char (*v28) (signed short, unsigned short) = v27;
extern signed short v29 (signed int, unsigned int);
extern signed short (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v78 = 0;
unsigned char v77 = 3;
signed short v76 = 3;

unsigned char v27 (signed short v79, unsigned short v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned short v83 = 5;
unsigned short v82 = 7;
signed short v81 = -4;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v84;
v84 = 5 + 5;
v15 (v84);
}
break;
case 4: 
{
unsigned char v85;
v85 = 4 - 6;
v15 (v85);
}
break;
case 6: 
return 7;
case 8: 
return 2;
case 10: 
{
unsigned char v86;
v86 = 0 + 5;
v15 (v86);
}
break;
case 12: 
return 7;
case 14: 
return 7;
case 16: 
return 5;
default: abort ();
}
}
}
}
