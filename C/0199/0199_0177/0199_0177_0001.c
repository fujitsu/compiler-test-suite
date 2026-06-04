#include <stdlib.h>
unsigned short v1 (unsigned int, signed short);
unsigned short (*v2) (unsigned int, signed short) = v1;
extern signed char v3 (unsigned int, signed char);
extern signed char (*v4) (unsigned int, signed char);
extern void v5 (unsigned char, signed short);
extern void (*v6) (unsigned char, signed short);
extern unsigned short v7 (unsigned short, unsigned short, unsigned short, signed char);
extern unsigned short (*v8) (unsigned short, unsigned short, unsigned short, signed char);
extern unsigned char v9 (unsigned char, unsigned char, signed char);
extern unsigned char (*v10) (unsigned char, unsigned char, signed char);
extern void v11 (signed short, signed char);
extern void (*v12) (signed short, signed char);
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed short v15 (unsigned int, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char);
unsigned char v17 (signed int);
unsigned char (*v18) (signed int) = v17;
extern unsigned char v19 (signed short, unsigned int);
extern unsigned char (*v20) (signed short, unsigned int);
extern void v23 (void);
extern void (*v24) (void);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern unsigned int v27 (signed char, unsigned char, signed char, unsigned char);
extern unsigned int (*v28) (signed char, unsigned char, signed char, unsigned char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v70 = 3;
unsigned short v69 = 6;
unsigned int v68 = 2U;

unsigned char v17 (signed int v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -1;
unsigned short v73 = 6;
unsigned int v72 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned int v75, signed short v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 7;
signed int v78 = -2;
signed short v77 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v80;
signed int v81;
unsigned char v82;
v80 = 1 + 7;
v81 = v78 + v78;
v82 = v13 (v80, v81);
history[history_index++] = (int)v82;
}
break;
case 10: 
{
unsigned char v83;
unsigned char v84;
signed char v85;
unsigned char v86;
v83 = 1 - 0;
v84 = 3 - v79;
v85 = -2 - -2;
v86 = v9 (v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
