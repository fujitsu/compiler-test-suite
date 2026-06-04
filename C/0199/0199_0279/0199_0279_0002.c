#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned short v3 (unsigned int, unsigned char, unsigned int);
extern unsigned short (*v4) (unsigned int, unsigned char, unsigned int);
extern signed int v5 (signed short, signed char);
extern signed int (*v6) (signed short, signed char);
extern unsigned short v7 (signed int, unsigned int, signed int, signed int);
extern unsigned short (*v8) (signed int, unsigned int, signed int, signed int);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern void v11 (void);
extern void (*v12) (void);
extern void v13 (unsigned int, signed short);
extern void (*v14) (unsigned int, signed short);
signed char v15 (signed short, unsigned int, unsigned short);
signed char (*v16) (signed short, unsigned int, unsigned short) = v15;
extern unsigned int v17 (unsigned int, unsigned char);
extern unsigned int (*v18) (unsigned int, unsigned char);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern signed int v23 (unsigned short, unsigned short);
extern signed int (*v24) (unsigned short, unsigned short);
extern signed int v25 (void);
extern signed int (*v26) (void);
void v27 (signed int, unsigned char, unsigned char);
void (*v28) (signed int, unsigned char, unsigned char) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v77 = 6U;
unsigned int v76 = 1U;
signed char v75 = -2;

void v27 (signed int v78, unsigned char v79, unsigned char v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 2;
signed int v82 = -3;
unsigned short v81 = 0;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v84;
unsigned char v85;
unsigned int v86;
v84 = 6U + 7U;
v85 = 5 - v79;
v86 = v17 (v84, v85);
history[history_index++] = (int)v86;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

signed char v15 (signed short v87, unsigned int v88, unsigned short v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = 0;
unsigned char v91 = 0;
unsigned int v90 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
