#include <stdlib.h>
extern signed int v1 (unsigned char, signed short);
extern signed int (*v2) (unsigned char, signed short);
extern signed char v3 (unsigned short, signed int, unsigned int, signed char);
extern signed char (*v4) (unsigned short, signed int, unsigned int, signed char);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern signed int v7 (unsigned short, unsigned short, unsigned char);
extern signed int (*v8) (unsigned short, unsigned short, unsigned char);
extern unsigned int v9 (unsigned int, signed int, signed int, signed int);
extern unsigned int (*v10) (unsigned int, signed int, signed int, signed int);
extern signed char v11 (signed int, unsigned char, unsigned int, unsigned char);
extern signed char (*v12) (signed int, unsigned char, unsigned int, unsigned char);
extern signed int v13 (signed int, unsigned int, unsigned int, unsigned short);
extern signed int (*v14) (signed int, unsigned int, unsigned int, unsigned short);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned char v17 (unsigned int, unsigned int, unsigned int, signed char);
extern unsigned char (*v18) (unsigned int, unsigned int, unsigned int, signed char);
extern void v19 (signed char, signed int, signed short);
extern void (*v20) (signed char, signed int, signed short);
unsigned short v21 (signed short, signed char, unsigned char);
unsigned short (*v22) (signed short, signed char, unsigned char) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed int v27 (signed short, unsigned char, unsigned int);
extern signed int (*v28) (signed short, unsigned char, unsigned int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v78 = 2U;
unsigned int v77 = 1U;
unsigned char v76 = 6;

unsigned short v21 (signed short v79, signed char v80, unsigned char v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 5;
unsigned char v83 = 3;
unsigned char v82 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
unsigned int v87 = 5U;
unsigned int v86 = 4U;
signed short v85 = 0;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v88;
signed int v89;
signed int v90;
signed int v91;
unsigned int v92;
v88 = v86 + 7U;
v89 = 0 - 0;
v90 = 2 - -1;
v91 = -1 + -3;
v92 = v9 (v88, v89, v90, v91);
history[history_index++] = (int)v92;
}
break;
case 8: 
{
unsigned short v93;
unsigned short v94;
unsigned char v95;
signed int v96;
v93 = 0 + 7;
v94 = 2 + 3;
v95 = 1 + 4;
v96 = v7 (v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}
