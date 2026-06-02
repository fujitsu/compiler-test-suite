#include <stdlib.h>
unsigned short v1 (signed char);
unsigned short (*v2) (signed char) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (unsigned int, unsigned short);
extern void (*v6) (unsigned int, unsigned short);
extern void v7 (signed short, signed short);
extern void (*v8) (signed short, signed short);
extern unsigned int v9 (unsigned int, unsigned short);
extern unsigned int (*v10) (unsigned int, unsigned short);
extern void v11 (unsigned int, unsigned short, signed int);
extern void (*v12) (unsigned int, unsigned short, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern unsigned short v23 (unsigned short, signed char, unsigned char);
extern unsigned short (*v24) (unsigned short, signed char, unsigned char);
extern unsigned int v25 (signed char, signed short);
extern unsigned int (*v26) (signed char, signed short);
extern signed char v29 (signed short, unsigned short, signed char, unsigned char);
extern signed char (*v30) (signed short, unsigned short, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v95 = 5U;
unsigned char v94 = 7;
unsigned short v93 = 6;

unsigned short v1 (signed char v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = -4;
signed int v98 = 3;
signed int v97 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v100;
v100 = v19 ();
history[history_index++] = (int)v100;
}
break;
case 2: 
{
unsigned char v101;
v101 = v19 ();
history[history_index++] = (int)v101;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
