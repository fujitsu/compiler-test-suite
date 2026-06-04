#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern void v3 (signed int, signed char);
extern void (*v4) (signed int, signed char);
extern void v5 (unsigned int, unsigned char);
extern void (*v6) (unsigned int, unsigned char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed char v9 (unsigned char, signed int);
extern signed char (*v10) (unsigned char, signed int);
signed short v11 (unsigned char);
signed short (*v12) (unsigned char) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v17 (unsigned char, unsigned int, unsigned int);
extern signed char (*v18) (unsigned char, unsigned int, unsigned int);
extern unsigned int v19 (signed char, unsigned char);
extern unsigned int (*v20) (signed char, unsigned char);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (unsigned int, signed short, signed int, signed int);
extern unsigned short (*v26) (unsigned int, signed short, signed int, signed int);
extern unsigned int v27 (signed short, signed short, signed short, unsigned short);
extern unsigned int (*v28) (signed short, signed short, signed short, unsigned short);
extern unsigned char v29 (unsigned short);
extern unsigned char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v53 = -2;
unsigned int v52 = 2U;
signed short v51 = 1;

signed short v11 (unsigned char v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 2;
signed int v56 = 3;
signed short v55 = 0;
trace++;
switch (trace)
{
case 6: 
return v55;
case 8: 
{
unsigned char v58;
v58 = v15 ();
history[history_index++] = (int)v58;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}
