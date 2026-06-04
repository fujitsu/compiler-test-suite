#include <stdlib.h>
void v3 (signed int, unsigned char, unsigned short, signed char);
void (*v4) (signed int, unsigned char, unsigned short, signed char) = v3;
extern void v5 (signed char, signed int, unsigned char);
extern void (*v6) (signed char, signed int, unsigned char);
extern unsigned short v7 (signed char, unsigned short);
extern unsigned short (*v8) (signed char, unsigned short);
unsigned char v9 (unsigned char, signed char);
unsigned char (*v10) (unsigned char, signed char) = v9;
extern signed char v11 (signed char, signed short, signed short, unsigned char);
extern signed char (*v12) (signed char, signed short, signed short, unsigned char);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned char v21 (signed short, signed int);
extern unsigned char (*v22) (signed short, signed int);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern signed int v29 (signed short);
extern signed int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v81 = -3;
unsigned char v80 = 2;
signed int v79 = -1;

unsigned char v9 (unsigned char v82, signed char v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -1;
unsigned int v85 = 6U;
signed char v84 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed int v87, unsigned char v88, unsigned short v89, signed char v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 2;
signed short v92 = 2;
unsigned short v91 = 0;
trace++;
switch (trace)
{
case 5: 
{
signed short v94;
unsigned short v95;
v94 = -3 - v92;
v95 = v13 (v94);
history[history_index++] = (int)v95;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
