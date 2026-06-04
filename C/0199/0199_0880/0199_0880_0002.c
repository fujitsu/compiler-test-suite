#include <stdlib.h>
extern signed short v1 (unsigned short, signed char);
extern signed short (*v2) (unsigned short, signed char);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (signed short, signed short, signed short, signed int);
extern void (*v6) (signed short, signed short, signed short, signed int);
extern unsigned char v7 (signed char, signed short);
extern unsigned char (*v8) (signed char, signed short);
extern unsigned short v9 (unsigned int, unsigned char, unsigned int);
extern unsigned short (*v10) (unsigned int, unsigned char, unsigned int);
extern signed int v11 (unsigned int, signed short, signed short, unsigned int);
extern signed int (*v12) (unsigned int, signed short, signed short, unsigned int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned short v15 (unsigned int, unsigned short, unsigned short);
extern unsigned short (*v16) (unsigned int, unsigned short, unsigned short);
extern void v17 (signed short, signed short, signed short);
extern void (*v18) (signed short, signed short, signed short);
unsigned char v19 (signed char, signed char, signed short);
unsigned char (*v20) (signed char, signed char, signed short) = v19;
extern void v21 (unsigned short);
extern void (*v22) (unsigned short);
extern void v23 (void);
extern void (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v98 = 6;
signed short v97 = 1;
unsigned char v96 = 2;

unsigned char v19 (signed char v99, signed char v100, signed short v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 6;
signed short v103 = -1;
signed char v102 = 3;
trace++;
switch (trace)
{
case 7: 
{
signed char v105;
v105 = v25 ();
history[history_index++] = (int)v105;
}
break;
case 9: 
{
signed char v106;
v106 = v25 ();
history[history_index++] = (int)v106;
}
break;
case 11: 
return v104;
default: abort ();
}
}
}
}
