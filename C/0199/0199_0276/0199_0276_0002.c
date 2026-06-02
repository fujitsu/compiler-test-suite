#include <stdlib.h>
void v1 (unsigned short, signed char);
void (*v2) (unsigned short, signed char) = v1;
extern signed int v3 (unsigned char, signed short, unsigned short);
extern signed int (*v4) (unsigned char, signed short, unsigned short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (unsigned int, unsigned char);
extern unsigned int (*v10) (unsigned int, unsigned char);
extern signed short v11 (unsigned int, signed int, signed int, signed short);
extern signed short (*v12) (unsigned int, signed int, signed int, signed short);
extern unsigned int v13 (signed char, signed short, signed char, signed int);
extern unsigned int (*v14) (signed char, signed short, signed char, signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v17 (signed int, unsigned short, signed char);
extern unsigned int (*v18) (signed int, unsigned short, signed char);
extern unsigned char v21 (signed short, signed char, signed short, unsigned short);
extern unsigned char (*v22) (signed short, signed char, signed short, unsigned short);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern signed int v25 (signed int, signed int);
extern signed int (*v26) (signed int, signed int);
void v27 (void);
void (*v28) (void) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v77 = 5;
signed int v76 = -4;
signed int v75 = 3;

void v27 (void)
{
{
for (;;) {
unsigned char v80 = 0;
unsigned short v79 = 3;
signed int v78 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned short v81, signed char v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 0;
unsigned short v84 = 4;
unsigned short v83 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v86;
v86 = v15 ();
history[history_index++] = (int)v86;
}
break;
case 6: 
{
unsigned int v87;
signed int v88;
signed int v89;
signed short v90;
signed short v91;
v87 = 1U + 7U;
v88 = 1 + 1;
v89 = -4 - 2;
v90 = 3 - -3;
v91 = v11 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 8: 
{
unsigned int v92;
unsigned char v93;
unsigned int v94;
v92 = 1U - 7U;
v93 = 0 + 6;
v94 = v9 (v92, v93);
history[history_index++] = (int)v94;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
