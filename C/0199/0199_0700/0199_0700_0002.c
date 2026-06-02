#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed short v5 (signed int, unsigned char);
extern signed short (*v6) (signed int, unsigned char);
extern signed char v7 (signed short);
extern signed char (*v8) (signed short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
void v13 (unsigned short, signed int);
void (*v14) (unsigned short, signed int) = v13;
extern unsigned short v15 (signed short, signed short, unsigned char);
extern unsigned short (*v16) (signed short, signed short, unsigned char);
extern unsigned short v17 (unsigned int);
extern unsigned short (*v18) (unsigned int);
extern void v19 (unsigned char, signed char);
extern void (*v20) (unsigned char, signed char);
extern signed short v21 (signed int);
extern signed short (*v22) (signed int);
void v23 (signed short, signed short, unsigned char);
void (*v24) (signed short, signed short, unsigned char) = v23;
extern unsigned short v25 (unsigned int, unsigned int, unsigned char, signed short);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned char, signed short);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern signed short v29 (signed int, signed int, unsigned char);
extern signed short (*v30) (signed int, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v78 = 0;
signed int v77 = 2;
unsigned short v76 = 7;

void v23 (signed short v79, signed short v80, unsigned char v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 3U;
unsigned int v83 = 0U;
signed short v82 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned short v85, signed int v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = 2;
unsigned int v88 = 5U;
unsigned char v87 = 6;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v90;
unsigned int v91;
unsigned char v92;
signed short v93;
unsigned short v94;
v90 = 3U - v88;
v91 = 0U + 2U;
v92 = v87 + 5;
v93 = -3 + -2;
v94 = v25 (v90, v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 7: 
{
unsigned int v95;
unsigned int v96;
unsigned char v97;
signed short v98;
unsigned short v99;
v95 = 6U + 5U;
v96 = 2U - v88;
v97 = v87 - v87;
v98 = -4 - 2;
v99 = v25 (v95, v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}
