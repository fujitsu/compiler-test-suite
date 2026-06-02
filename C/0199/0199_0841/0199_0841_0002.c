#include <stdlib.h>
unsigned short v1 (unsigned char, signed short, unsigned int);
unsigned short (*v2) (unsigned char, signed short, unsigned int) = v1;
extern unsigned int v3 (signed short, unsigned char);
extern unsigned int (*v4) (signed short, unsigned char);
extern signed short v5 (unsigned char, signed char, unsigned short, unsigned int);
extern signed short (*v6) (unsigned char, signed char, unsigned short, unsigned int);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned char v17 (signed char, signed short);
extern unsigned char (*v18) (signed char, signed short);
extern unsigned short v19 (signed short, signed int, signed int);
extern unsigned short (*v20) (signed short, signed int, signed int);
extern signed char v21 (signed char, signed char);
extern signed char (*v22) (signed char, signed char);
extern unsigned short v23 (signed short, signed short);
extern unsigned short (*v24) (signed short, signed short);
extern unsigned int v25 (unsigned short, signed int, signed int);
extern unsigned int (*v26) (unsigned short, signed int, signed int);
extern unsigned int v27 (signed short);
extern unsigned int (*v28) (signed short);
extern unsigned int v29 (signed char, signed int, signed int, signed short);
extern unsigned int (*v30) (signed char, signed int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v104 = -3;
unsigned short v103 = 2;
unsigned short v102 = 1;

unsigned short v1 (unsigned char v105, signed short v106, unsigned int v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned int v110 = 2U;
unsigned int v109 = 5U;
signed int v108 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v111;
v111 = v13 ();
history[history_index++] = (int)v111;
}
break;
case 14: 
return 4;
default: abort ();
}
}
}
}
