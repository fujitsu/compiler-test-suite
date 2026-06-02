#include <stdlib.h>
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern signed char v7 (signed char, unsigned int, signed int);
extern signed char (*v8) (signed char, unsigned int, signed int);
signed short v9 (void);
signed short (*v10) (void) = v9;
extern void v11 (unsigned char, unsigned short, signed short, unsigned char);
extern void (*v12) (unsigned char, unsigned short, signed short, unsigned char);
extern signed short v13 (unsigned short, unsigned char, signed char);
extern signed short (*v14) (unsigned short, unsigned char, signed char);
extern void v15 (signed int, signed int, signed int);
extern void (*v16) (signed int, signed int, signed int);
extern unsigned short v17 (signed char, signed char, signed short, signed short);
extern unsigned short (*v18) (signed char, signed char, signed short, signed short);
extern unsigned int v19 (signed int, signed short, unsigned short, signed int);
extern unsigned int (*v20) (signed int, signed short, unsigned short, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed int v23 (signed int, signed int, unsigned short);
extern signed int (*v24) (signed int, signed int, unsigned short);
extern void v25 (signed int, unsigned char, signed short, unsigned int);
extern void (*v26) (signed int, unsigned char, signed short, unsigned int);
signed char v27 (unsigned int, signed short, signed int, signed short);
signed char (*v28) (unsigned int, signed short, signed int, signed short) = v27;
extern unsigned short v29 (signed char, signed int, unsigned short);
extern unsigned short (*v30) (signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v96 = -1;
unsigned int v95 = 2U;
signed int v94 = -2;

signed char v27 (unsigned int v97, signed short v98, signed int v99, signed short v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = -1;
signed int v102 = 2;
signed char v101 = -4;
trace++;
switch (trace)
{
case 9: 
{
signed char v104;
signed int v105;
unsigned short v106;
unsigned short v107;
v104 = -3 + v101;
v105 = v102 - v102;
v106 = 7 - 4;
v107 = v29 (v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
unsigned char v110 = 1;
signed char v109 = 3;
signed char v108 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
