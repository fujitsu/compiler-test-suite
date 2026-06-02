#include <stdlib.h>
extern signed short v1 (unsigned int, signed short, signed short);
extern signed short (*v2) (unsigned int, signed short, signed short);
extern unsigned char v3 (unsigned char, unsigned short);
extern unsigned char (*v4) (unsigned char, unsigned short);
signed char v5 (unsigned short);
signed char (*v6) (unsigned short) = v5;
extern unsigned int v7 (signed int, unsigned char);
extern unsigned int (*v8) (signed int, unsigned char);
extern void v9 (unsigned int, unsigned char);
extern void (*v10) (unsigned int, unsigned char);
extern unsigned short v11 (unsigned char, signed short, signed int);
extern unsigned short (*v12) (unsigned char, signed short, signed int);
signed char v13 (void);
signed char (*v14) (void) = v13;
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern signed short v21 (signed char);
extern signed short (*v22) (signed char);
extern unsigned char v23 (signed short, signed short);
extern unsigned char (*v24) (signed short, signed short);
extern void v25 (unsigned short, signed int);
extern void (*v26) (unsigned short, signed int);
extern void v27 (unsigned short);
extern void (*v28) (unsigned short);
extern void v29 (signed char, unsigned char);
extern void (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v60 = -1;
unsigned short v59 = 1;
signed char v58 = -3;

signed char v13 (void)
{
{
for (;;) {
unsigned char v63 = 3;
signed short v62 = 0;
unsigned int v61 = 1U;
trace++;
switch (trace)
{
case 1: 
{
signed char v64;
unsigned char v65;
v64 = 0 + 3;
v65 = v63 + v63;
v29 (v64, v65);
}
break;
case 3: 
{
unsigned short v66;
v66 = 6 + 1;
v27 (v66);
}
break;
case 5: 
{
signed char v67;
unsigned char v68;
v67 = 1 - -2;
v68 = 4 + v63;
v29 (v67, v68);
}
break;
case 7: 
return -1;
default: abort ();
}
}
}
}

signed char v5 (unsigned short v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = 2;
unsigned int v71 = 6U;
unsigned char v70 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
