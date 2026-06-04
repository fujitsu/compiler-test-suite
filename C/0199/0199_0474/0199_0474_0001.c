#include <stdlib.h>
signed char v1 (unsigned char, unsigned char, unsigned char, signed short);
signed char (*v2) (unsigned char, unsigned char, unsigned char, signed short) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned char v5 (unsigned char, unsigned short, signed short);
extern unsigned char (*v6) (unsigned char, unsigned short, signed short);
extern signed short v7 (signed char, unsigned char);
extern signed short (*v8) (signed char, unsigned char);
extern signed char v9 (unsigned short, signed int, signed short);
extern signed char (*v10) (unsigned short, signed int, signed short);
extern unsigned short v11 (unsigned int, unsigned short, signed short);
extern unsigned short (*v12) (unsigned int, unsigned short, signed short);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
signed short v19 (unsigned int, signed char);
signed short (*v20) (unsigned int, signed char) = v19;
extern unsigned int v21 (unsigned int, signed short);
extern unsigned int (*v22) (unsigned int, signed short);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern void v25 (unsigned int);
extern void (*v26) (unsigned int);
extern signed short v27 (signed int, signed char);
extern signed short (*v28) (signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v74 = 6;
signed int v73 = -2;
signed char v72 = -1;

signed short v19 (unsigned int v75, signed char v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 0;
unsigned int v78 = 2U;
signed char v77 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned char v80, unsigned char v81, unsigned char v82, signed short v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 0;
unsigned short v85 = 4;
signed int v84 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v87;
signed int v88;
signed short v89;
signed char v90;
v87 = v85 + 0;
v88 = v84 + 1;
v89 = 3 + -4;
v90 = v9 (v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
