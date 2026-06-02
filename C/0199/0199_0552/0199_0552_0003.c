#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern void v5 (signed short, unsigned char, unsigned short);
extern void (*v6) (signed short, unsigned char, unsigned short);
extern unsigned int v7 (unsigned char, unsigned short, unsigned int);
extern unsigned int (*v8) (unsigned char, unsigned short, unsigned int);
extern unsigned short v9 (unsigned short, unsigned int);
extern unsigned short (*v10) (unsigned short, unsigned int);
unsigned int v11 (unsigned int, unsigned char, unsigned short, signed int);
unsigned int (*v12) (unsigned int, unsigned char, unsigned short, signed int) = v11;
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern signed char v15 (unsigned char, signed short);
extern signed char (*v16) (unsigned char, signed short);
extern void v17 (void);
extern void (*v18) (void);
extern signed int v21 (signed short, signed short);
extern signed int (*v22) (signed short, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed char v25 (unsigned short, signed short, signed char, signed int);
extern signed char (*v26) (unsigned short, signed short, signed char, signed int);
extern unsigned int v27 (signed char, signed int, signed int);
extern unsigned int (*v28) (signed char, signed int, signed int);
extern unsigned int v29 (unsigned int, signed int);
extern unsigned int (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v112 = -3;
unsigned char v111 = 5;
signed int v110 = 2;

unsigned int v11 (unsigned int v113, unsigned char v114, unsigned short v115, signed int v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = 0;
unsigned int v118 = 0U;
signed int v117 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v120;
unsigned short v121;
v120 = 1 + 1;
v121 = v13 (v120);
history[history_index++] = (int)v121;
}
break;
case 3: 
{
signed char v122;
unsigned short v123;
v122 = -1 - -3;
v123 = v13 (v122);
history[history_index++] = (int)v123;
}
break;
case 17: 
return v113;
case 19: 
return 6U;
default: abort ();
}
}
}
}
