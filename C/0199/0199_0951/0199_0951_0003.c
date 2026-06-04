#include <stdlib.h>
extern unsigned char v1 (signed int, signed char, signed int);
extern unsigned char (*v2) (signed int, signed char, signed int);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
signed int v7 (void);
signed int (*v8) (void) = v7;
extern void v9 (signed int, unsigned char, unsigned char);
extern void (*v10) (signed int, unsigned char, unsigned char);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern void v13 (void);
extern void (*v14) (void);
signed char v15 (signed int, unsigned char, unsigned int);
signed char (*v16) (signed int, unsigned char, unsigned int) = v15;
extern void v17 (signed short, unsigned char, unsigned short);
extern void (*v18) (signed short, unsigned char, unsigned short);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned char v21 (signed int, unsigned char, unsigned int);
extern unsigned char (*v22) (signed int, unsigned char, unsigned int);
extern void v23 (unsigned char, signed short);
extern void (*v24) (unsigned char, signed short);
extern unsigned char v25 (unsigned int);
extern unsigned char (*v26) (unsigned int);
extern signed int v27 (unsigned short, unsigned int);
extern signed int (*v28) (unsigned short, unsigned int);
extern signed short v29 (unsigned int, signed char, unsigned int);
extern signed short (*v30) (unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v96 = -4;
signed int v95 = -1;
unsigned char v94 = 7;

signed char v15 (signed int v97, unsigned char v98, unsigned int v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed char v102 = 0;
unsigned int v101 = 1U;
unsigned int v100 = 2U;
trace++;
switch (trace)
{
case 1: 
{
v19 ();
}
break;
case 15: 
return -3;
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
signed int v105 = -3;
unsigned char v104 = 1;
unsigned short v103 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
