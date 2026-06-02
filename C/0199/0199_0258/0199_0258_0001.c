#include <stdlib.h>
extern void v3 (signed short, signed int, signed short, signed int);
extern void (*v4) (signed short, signed int, signed short, signed int);
extern void v5 (signed int, signed int, unsigned short);
extern void (*v6) (signed int, signed int, unsigned short);
signed short v7 (unsigned int, unsigned char, unsigned short);
signed short (*v8) (unsigned int, unsigned char, unsigned short) = v7;
extern unsigned short v9 (unsigned int, signed char);
extern unsigned short (*v10) (unsigned int, signed char);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
unsigned char v15 (signed short, unsigned char, unsigned int);
unsigned char (*v16) (signed short, unsigned char, unsigned int) = v15;
extern signed short v17 (signed int, signed char, unsigned char, signed short);
extern signed short (*v18) (signed int, signed char, unsigned char, signed short);
extern unsigned char v21 (signed char);
extern unsigned char (*v22) (signed char);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned char v27 (unsigned char, unsigned char, signed char);
extern unsigned char (*v28) (unsigned char, unsigned char, signed char);
extern signed int v29 (unsigned char, unsigned int, unsigned int);
extern signed int (*v30) (unsigned char, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v73 = 0;
unsigned short v72 = 4;
signed char v71 = 0;

signed short v23 (void)
{
{
for (;;) {
unsigned char v76 = 4;
unsigned short v75 = 4;
unsigned int v74 = 2U;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v77;
v77 = v25 ();
history[history_index++] = (int)v77;
}
break;
case 10: 
{
unsigned short v78;
v78 = v25 ();
history[history_index++] = (int)v78;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}

unsigned char v15 (signed short v79, unsigned char v80, unsigned int v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned short v84 = 2;
signed char v83 = -4;
signed int v82 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned int v85, unsigned char v86, unsigned short v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = -2;
unsigned short v89 = 1;
signed int v88 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
