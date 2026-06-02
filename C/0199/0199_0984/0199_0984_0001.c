#include <stdlib.h>
extern unsigned int v3 (unsigned int, signed int, unsigned int);
extern unsigned int (*v4) (unsigned int, signed int, unsigned int);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern signed char v7 (signed short, signed short, unsigned char, unsigned char);
extern signed char (*v8) (signed short, signed short, unsigned char, unsigned char);
unsigned char v9 (signed int);
unsigned char (*v10) (signed int) = v9;
extern void v11 (unsigned short, signed short, signed int, signed int);
extern void (*v12) (unsigned short, signed short, signed int, signed int);
extern unsigned short v13 (unsigned char, unsigned char);
extern unsigned short (*v14) (unsigned char, unsigned char);
signed short v15 (signed char);
signed short (*v16) (signed char) = v15;
extern unsigned int v17 (unsigned int, signed char);
extern unsigned int (*v18) (unsigned int, signed char);
extern unsigned char v19 (signed int, unsigned char);
extern unsigned char (*v20) (signed int, unsigned char);
extern signed short v21 (unsigned short);
extern signed short (*v22) (unsigned short);
extern signed int v23 (unsigned char, unsigned int, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int, unsigned int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern unsigned short v29 (signed char, unsigned int, unsigned short);
extern unsigned short (*v30) (signed char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v80 = 3;
signed int v79 = 2;
unsigned short v78 = 2;

signed short v15 (signed char v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = -3;
unsigned short v83 = 0;
unsigned int v82 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed int v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
unsigned char v88 = 2;
signed char v87 = 3;
unsigned int v86 = 5U;
trace++;
switch (trace)
{
case 2: 
return v88;
case 4: 
{
unsigned short v89;
signed short v90;
signed int v91;
signed int v92;
v89 = 1 - 6;
v90 = 0 + 3;
v91 = -4 + 3;
v92 = -2 - v85;
v11 (v89, v90, v91, v92);
}
break;
case 12: 
return v88;
default: abort ();
}
}
}
}
