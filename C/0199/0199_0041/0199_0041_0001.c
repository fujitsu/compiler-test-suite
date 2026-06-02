#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern unsigned char v3 (signed short, unsigned char, signed int, unsigned char);
extern unsigned char (*v4) (signed short, unsigned char, signed int, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
signed char v9 (signed char, unsigned int, unsigned short);
signed char (*v10) (signed char, unsigned int, unsigned short) = v9;
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
extern signed char v13 (unsigned int, unsigned char, unsigned int, signed int);
extern signed char (*v14) (unsigned int, unsigned char, unsigned int, signed int);
extern signed short v15 (unsigned char, signed char, unsigned char, signed int);
extern signed short (*v16) (unsigned char, signed char, unsigned char, signed int);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern signed short v19 (unsigned int, signed int, unsigned short, unsigned int);
extern signed short (*v20) (unsigned int, signed int, unsigned short, unsigned int);
extern void v21 (unsigned short, unsigned short);
extern void (*v22) (unsigned short, unsigned short);
extern unsigned char v23 (unsigned char, signed short, unsigned int);
extern unsigned char (*v24) (unsigned char, signed short, unsigned int);
extern signed char v25 (unsigned char, unsigned int);
extern signed char (*v26) (unsigned char, unsigned int);
extern unsigned short v29 (signed int, signed int);
extern unsigned short (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v53 = 6U;
signed char v52 = -2;
unsigned short v51 = 1;

signed char v9 (signed char v54, unsigned int v55, unsigned short v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed int v59 = 2;
signed char v58 = -1;
signed char v57 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned short v62 = 7;
unsigned char v61 = 5;
signed int v60 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v63;
unsigned short v64;
v63 = v61 - 5;
v64 = v11 (v63);
history[history_index++] = (int)v64;
}
break;
case 14: 
return v62;
default: abort ();
}
}
}
}
