#include <stdlib.h>
unsigned char v1 (signed char);
unsigned char (*v2) (signed char) = v1;
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
unsigned int v5 (unsigned short, signed int, signed short);
unsigned int (*v6) (unsigned short, signed int, signed short) = v5;
extern unsigned int v7 (unsigned char, signed int, signed char);
extern unsigned int (*v8) (unsigned char, signed int, signed char);
extern void v9 (signed int, signed char, signed char, unsigned char);
extern void (*v10) (signed int, signed char, signed char, unsigned char);
extern unsigned char v11 (signed char, signed int, unsigned int);
extern unsigned char (*v12) (signed char, signed int, unsigned int);
extern void v13 (signed char);
extern void (*v14) (signed char);
signed short v15 (signed short, signed short, signed int);
signed short (*v16) (signed short, signed short, signed int) = v15;
extern signed int v17 (unsigned int);
extern signed int (*v18) (unsigned int);
extern unsigned short v19 (unsigned char, unsigned char);
extern unsigned short (*v20) (unsigned char, unsigned char);
extern signed char v21 (unsigned short, signed char);
extern signed char (*v22) (unsigned short, signed char);
extern unsigned char v23 (unsigned short);
extern unsigned char (*v24) (unsigned short);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
extern unsigned int v29 (signed char, unsigned char);
extern unsigned int (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v73 = -3;
unsigned short v72 = 3;
unsigned char v71 = 1;

signed short v15 (signed short v74, signed short v75, signed int v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 1;
signed short v78 = -3;
signed char v77 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v80, signed int v81, signed short v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = -1;
signed int v84 = 3;
signed char v83 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed char v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = -2;
unsigned short v88 = 0;
unsigned char v87 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v90;
v90 = 0 + v86;
v13 (v90);
}
break;
case 8: 
return v87;
case 9: 
{
signed char v91;
v91 = -2 - 3;
v13 (v91);
}
break;
case 13: 
return v87;
default: abort ();
}
}
}
}
