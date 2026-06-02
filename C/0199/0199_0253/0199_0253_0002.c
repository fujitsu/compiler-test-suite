#include <stdlib.h>
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
signed int v7 (unsigned int, signed int, unsigned int, signed char);
signed int (*v8) (unsigned int, signed int, unsigned int, signed char) = v7;
extern unsigned int v9 (signed int, unsigned int, signed int);
extern unsigned int (*v10) (signed int, unsigned int, signed int);
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
extern unsigned int v13 (unsigned short, unsigned char, signed int, unsigned char);
extern unsigned int (*v14) (unsigned short, unsigned char, signed int, unsigned char);
extern signed short v15 (signed int, unsigned int, signed char, unsigned int);
extern signed short (*v16) (signed int, unsigned int, signed char, unsigned int);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern unsigned int v19 (signed short, unsigned short, signed short, signed int);
extern unsigned int (*v20) (signed short, unsigned short, signed short, signed int);
extern unsigned short v21 (signed char, signed char, unsigned char, signed int);
extern unsigned short (*v22) (signed char, signed char, unsigned char, signed int);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern void v25 (unsigned char, unsigned char, unsigned int, signed short);
extern void (*v26) (unsigned char, unsigned char, unsigned int, signed short);
extern signed short v27 (signed int, signed short);
extern signed short (*v28) (signed int, signed short);
extern signed int v29 (unsigned char, unsigned short);
extern signed int (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v91 = 0;
signed char v90 = 0;
unsigned int v89 = 5U;

signed short v23 (void)
{
{
for (;;) {
signed int v94 = -3;
signed int v93 = -4;
unsigned int v92 = 2U;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v95;
signed short v96;
v95 = v92 - v92;
v96 = v11 (v95);
history[history_index++] = (int)v96;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}

signed int v7 (unsigned int v97, signed int v98, unsigned int v99, signed char v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = -2;
signed int v102 = -1;
unsigned char v101 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
