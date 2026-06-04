#include <stdlib.h>
void v1 (unsigned int, signed short);
void (*v2) (unsigned int, signed short) = v1;
extern void v3 (unsigned short, unsigned short);
extern void (*v4) (unsigned short, unsigned short);
extern void v5 (signed char, unsigned short);
extern void (*v6) (signed char, unsigned short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned int v11 (unsigned short, unsigned char, signed short);
extern unsigned int (*v12) (unsigned short, unsigned char, signed short);
extern unsigned char v13 (signed char, signed int, unsigned short);
extern unsigned char (*v14) (signed char, signed int, unsigned short);
extern unsigned char v15 (signed int, signed short, signed short);
extern unsigned char (*v16) (signed int, signed short, signed short);
extern signed int v17 (unsigned int, unsigned char, signed int, signed int);
extern signed int (*v18) (unsigned int, unsigned char, signed int, signed int);
extern unsigned int v19 (signed int, unsigned char, unsigned int);
extern unsigned int (*v20) (signed int, unsigned char, unsigned int);
extern signed short v21 (signed int, unsigned int);
extern signed short (*v22) (signed int, unsigned int);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed char v25 (signed char, signed short, signed char);
extern signed char (*v26) (signed char, signed short, signed char);
extern signed short v29 (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed short (*v30) (unsigned int, unsigned char, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v96 = 1;
signed short v95 = -3;
unsigned int v94 = 0U;

void v1 (unsigned int v97, signed short v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 7;
signed char v100 = -4;
signed int v99 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v102;
unsigned short v103;
v102 = v100 + 3;
v103 = 5 - 7;
v5 (v102, v103);
}
break;
case 2: 
{
signed char v104;
v104 = v9 ();
history[history_index++] = (int)v104;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
