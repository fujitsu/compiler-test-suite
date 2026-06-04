#include <stdlib.h>
extern void v3 (void);
extern void (*v4) (void);
signed int v5 (signed int);
signed int (*v6) (signed int) = v5;
extern void v7 (signed int, unsigned short, signed char);
extern void (*v8) (signed int, unsigned short, signed char);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned char v13 (unsigned int, signed char);
extern unsigned char (*v14) (unsigned int, signed char);
extern signed int v15 (signed short, signed int, signed int);
extern signed int (*v16) (signed short, signed int, signed int);
extern signed char v17 (signed int, unsigned int);
extern signed char (*v18) (signed int, unsigned int);
extern unsigned short v19 (unsigned int, signed char);
extern unsigned short (*v20) (unsigned int, signed char);
extern signed short v21 (unsigned int, unsigned char, signed char, signed short);
extern signed short (*v22) (unsigned int, unsigned char, signed char, signed short);
extern void v23 (signed char, signed short, unsigned short, signed char);
extern void (*v24) (signed char, signed short, unsigned short, signed char);
extern unsigned char v25 (signed char, signed int);
extern unsigned char (*v26) (signed char, signed int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
unsigned char v29 (signed int, unsigned int, signed int);
unsigned char (*v30) (signed int, unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v81 = 0U;
signed char v80 = 1;
unsigned char v79 = 4;

unsigned char v29 (signed int v82, unsigned int v83, signed int v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 0U;
unsigned short v86 = 1;
signed char v85 = 3;
trace++;
switch (trace)
{
case 3: 
return 5;
default: abort ();
}
}
}
}

signed int v5 (signed int v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
signed char v91 = 2;
unsigned short v90 = 7;
signed char v89 = 3;
trace++;
switch (trace)
{
case 1: 
return -1;
default: abort ();
}
}
}
}
