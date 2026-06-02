#include <stdlib.h>
unsigned char v1 (unsigned char);
unsigned char (*v2) (unsigned char) = v1;
unsigned char v3 (signed short, signed char);
unsigned char (*v4) (signed short, signed char) = v3;
extern void v5 (unsigned char, unsigned int, signed int, unsigned char);
extern void (*v6) (unsigned char, unsigned int, signed int, unsigned char);
extern unsigned short v7 (unsigned int, signed char, signed int, unsigned int);
extern unsigned short (*v8) (unsigned int, signed char, signed int, unsigned int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed int v15 (unsigned char, unsigned char);
extern signed int (*v16) (unsigned char, unsigned char);
extern signed char v17 (signed short);
extern signed char (*v18) (signed short);
extern void v19 (signed int, unsigned int, signed int, signed char);
extern void (*v20) (signed int, unsigned int, signed int, signed char);
extern signed char v21 (signed short, unsigned int);
extern signed char (*v22) (signed short, unsigned int);
extern signed char v23 (unsigned char);
extern signed char (*v24) (unsigned char);
extern unsigned int v27 (signed char, unsigned char, signed short, unsigned short);
extern unsigned int (*v28) (signed char, unsigned char, signed short, unsigned short);
extern signed short v29 (unsigned int, signed int);
extern signed short (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v54 = -2;
unsigned char v53 = 4;
signed int v52 = -4;

unsigned char v3 (signed short v55, signed char v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed int v59 = 1;
unsigned short v58 = 1;
signed short v57 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned int v63 = 6U;
unsigned short v62 = 5;
signed int v61 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v64;
unsigned char v65;
signed int v66;
v64 = v60 + 5;
v65 = v60 + 6;
v66 = v15 (v64, v65);
history[history_index++] = (int)v66;
}
break;
case 12: 
return v60;
default: abort ();
}
}
}
}
