#include <stdlib.h>
extern signed char v1 (signed short, signed char, signed int);
extern signed char (*v2) (signed short, signed char, signed int);
extern signed short v3 (unsigned char, signed char, signed short);
extern signed short (*v4) (unsigned char, signed char, signed short);
unsigned short v5 (unsigned int, signed char, signed short, unsigned short);
unsigned short (*v6) (unsigned int, signed char, signed short, unsigned short) = v5;
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
extern unsigned int v9 (signed char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char);
extern signed int v11 (unsigned int, unsigned char, unsigned int);
extern signed int (*v12) (unsigned int, unsigned char, unsigned int);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern signed char v15 (signed short, signed char, signed short, unsigned int);
extern signed char (*v16) (signed short, signed char, signed short, unsigned int);
extern void v17 (unsigned char, signed char);
extern void (*v18) (unsigned char, signed char);
extern unsigned short v19 (unsigned char, signed short, unsigned short);
extern unsigned short (*v20) (unsigned char, signed short, unsigned short);
extern signed short v21 (signed int, unsigned int, signed char);
extern signed short (*v22) (signed int, unsigned int, signed char);
unsigned int v25 (signed short, unsigned short);
unsigned int (*v26) (signed short, unsigned short) = v25;
extern void v27 (signed int, unsigned int, signed char, signed char);
extern void (*v28) (signed int, unsigned int, signed char, signed char);
extern void v29 (signed int, unsigned char, unsigned char, unsigned char);
extern void (*v30) (signed int, unsigned char, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v78 = -1;
unsigned short v77 = 4;
unsigned char v76 = 2;

unsigned int v25 (signed short v79, unsigned short v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 4;
unsigned char v82 = 7;
unsigned int v81 = 6U;
trace++;
switch (trace)
{
case 4: 
return 6U;
case 7: 
return v81;
case 10: 
return 5U;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned int v84, signed char v85, signed short v86, unsigned short v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 4;
signed int v89 = -1;
signed int v88 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
