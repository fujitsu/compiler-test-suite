#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned short, unsigned int, unsigned short);
extern unsigned char (*v2) (unsigned short, unsigned short, unsigned int, unsigned short);
extern signed char v3 (unsigned int, signed short, unsigned short, unsigned short);
extern signed char (*v4) (unsigned int, signed short, unsigned short, unsigned short);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
unsigned char v9 (unsigned int, unsigned short, unsigned int, unsigned int);
unsigned char (*v10) (unsigned int, unsigned short, unsigned int, unsigned int) = v9;
extern signed int v13 (unsigned short, signed int);
extern signed int (*v14) (unsigned short, signed int);
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
extern void v17 (signed short);
extern void (*v18) (signed short);
extern signed int v19 (signed int, unsigned int);
extern signed int (*v20) (signed int, unsigned int);
extern unsigned char v21 (signed char, signed short, signed short);
extern unsigned char (*v22) (signed char, signed short, signed short);
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v75 = 1;
signed int v74 = 3;
unsigned char v73 = 6;

signed int v29 (void)
{
{
for (;;) {
signed int v78 = -3;
signed char v77 = 1;
signed char v76 = 3;
trace++;
switch (trace)
{
case 9: 
return -4;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v79, unsigned short v80, unsigned int v81, unsigned int v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed char v85 = 1;
unsigned char v84 = 3;
signed char v83 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
