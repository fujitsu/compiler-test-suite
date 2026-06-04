#include <stdlib.h>
extern unsigned char v1 (signed char, signed int);
extern unsigned char (*v2) (signed char, signed int);
extern unsigned char v3 (signed char, unsigned int, signed short, signed int);
extern unsigned char (*v4) (signed char, unsigned int, signed short, signed int);
extern signed int v5 (unsigned char, unsigned short, signed char, signed int);
extern signed int (*v6) (unsigned char, unsigned short, signed char, signed int);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (signed int);
extern unsigned int (*v10) (signed int);
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern unsigned char v13 (unsigned char, signed int);
extern unsigned char (*v14) (unsigned char, signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern void v17 (unsigned char, unsigned char, unsigned short, signed int);
extern void (*v18) (unsigned char, unsigned char, unsigned short, signed int);
extern signed char v19 (signed int, unsigned char, unsigned char, unsigned short);
extern signed char (*v20) (signed int, unsigned char, unsigned char, unsigned short);
extern unsigned char v21 (unsigned char, signed int, signed short);
extern unsigned char (*v22) (unsigned char, signed int, signed short);
extern signed char v23 (signed int, signed char, unsigned char);
extern signed char (*v24) (signed int, signed char, unsigned char);
extern signed char v25 (unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int);
extern signed int v27 (unsigned short, signed short);
extern signed int (*v28) (unsigned short, signed short);
signed char v29 (unsigned int);
signed char (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v75 = -4;
unsigned int v74 = 7U;
unsigned short v73 = 1;

signed char v29 (unsigned int v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 7U;
signed short v78 = -1;
signed short v77 = 3;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v80;
v80 = v15 ();
history[history_index++] = (int)v80;
}
break;
case 4: 
{
unsigned char v81;
v81 = v15 ();
history[history_index++] = (int)v81;
}
break;
case 6: 
{
unsigned char v82;
unsigned char v83;
unsigned short v84;
signed int v85;
v82 = 5 - 3;
v83 = 5 - 3;
v84 = 2 + 5;
v85 = -4 - -2;
v17 (v82, v83, v84, v85);
}
break;
case 8: 
{
unsigned char v86;
v86 = v15 ();
history[history_index++] = (int)v86;
}
break;
case 10: 
{
unsigned char v87;
v87 = v15 ();
history[history_index++] = (int)v87;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
unsigned char v90 = 4;
signed short v89 = -2;
signed char v88 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
