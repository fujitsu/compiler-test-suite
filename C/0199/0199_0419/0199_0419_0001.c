#include <stdlib.h>
extern unsigned char v3 (signed int, signed char);
extern unsigned char (*v4) (signed int, signed char);
extern unsigned char v5 (unsigned short, signed int);
extern unsigned char (*v6) (unsigned short, signed int);
extern unsigned char v7 (unsigned short, signed short);
extern unsigned char (*v8) (unsigned short, signed short);
extern signed char v9 (signed short, signed char, signed int, unsigned int);
extern signed char (*v10) (signed short, signed char, signed int, unsigned int);
extern signed int v11 (unsigned short, signed char, signed int);
extern signed int (*v12) (unsigned short, signed char, signed int);
signed short v13 (signed char, signed short);
signed short (*v14) (signed char, signed short) = v13;
extern signed short v15 (unsigned char, unsigned int);
extern signed short (*v16) (unsigned char, unsigned int);
extern signed short v17 (unsigned int, signed char);
extern signed short (*v18) (unsigned int, signed char);
extern unsigned char v19 (signed short, unsigned short, signed short, unsigned short);
extern unsigned char (*v20) (signed short, unsigned short, signed short, unsigned short);
extern unsigned short v21 (unsigned char, signed int, signed short);
extern unsigned short (*v22) (unsigned char, signed int, signed short);
extern signed short v23 (signed int, unsigned char, signed short);
extern signed short (*v24) (signed int, unsigned char, signed short);
extern signed char v25 (unsigned int, unsigned char);
extern signed char (*v26) (unsigned int, unsigned char);
extern void v27 (signed short, unsigned short, signed char, signed short);
extern void (*v28) (signed short, unsigned short, signed char, signed short);
signed int v29 (unsigned char, signed char);
signed int (*v30) (unsigned char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v63 = -2;
unsigned short v62 = 4;
signed short v61 = -4;

signed int v29 (unsigned char v64, signed char v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = 2;
signed int v67 = 3;
unsigned char v66 = 5;
trace++;
switch (trace)
{
case 1: 
return v67;
default: abort ();
}
}
}
}

signed short v13 (signed char v69, signed short v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 4;
unsigned short v72 = 7;
unsigned int v71 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
