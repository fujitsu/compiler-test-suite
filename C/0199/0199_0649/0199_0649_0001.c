#include <stdlib.h>
extern signed int v3 (unsigned short, unsigned char, unsigned short);
extern signed int (*v4) (unsigned short, unsigned char, unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (unsigned short, unsigned short);
extern signed short (*v8) (unsigned short, unsigned short);
extern signed char v9 (signed int, signed char, unsigned int, unsigned int);
extern signed char (*v10) (signed int, signed char, unsigned int, unsigned int);
extern void v11 (signed short, unsigned short, signed char, unsigned char);
extern void (*v12) (signed short, unsigned short, signed char, unsigned char);
extern signed int v13 (unsigned char, signed int, unsigned int);
extern signed int (*v14) (unsigned char, signed int, unsigned int);
extern signed int v15 (signed short, unsigned short, signed int, signed char);
extern signed int (*v16) (signed short, unsigned short, signed int, signed char);
extern signed char v17 (unsigned int, unsigned char, unsigned int, unsigned int);
extern signed char (*v18) (unsigned int, unsigned char, unsigned int, unsigned int);
unsigned short v19 (signed int);
unsigned short (*v20) (signed int) = v19;
signed char v21 (unsigned char, signed short);
signed char (*v22) (unsigned char, signed short) = v21;
extern unsigned char v23 (unsigned char, signed char, unsigned short, signed char);
extern unsigned char (*v24) (unsigned char, signed char, unsigned short, signed char);
extern void v25 (void);
extern void (*v26) (void);
extern signed int v29 (signed short, unsigned short, signed int, signed int);
extern signed int (*v30) (signed short, unsigned short, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v78 = 3;
unsigned char v77 = 4;
signed int v76 = -2;

signed char v21 (unsigned char v79, signed short v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed char v83 = -3;
unsigned char v82 = 4;
signed char v81 = 2;
trace++;
switch (trace)
{
case 7: 
{
v25 ();
}
break;
case 9: 
{
v25 ();
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned short v19 (signed int v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
signed short v87 = -4;
signed char v86 = 1;
signed short v85 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
