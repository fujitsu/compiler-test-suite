#include <stdlib.h>
void v3 (signed char, signed int, signed short);
void (*v4) (signed char, signed int, signed short) = v3;
extern signed char v5 (unsigned short, signed char, unsigned char, signed char);
extern signed char (*v6) (unsigned short, signed char, unsigned char, signed char);
extern unsigned int v7 (signed short);
extern unsigned int (*v8) (signed short);
extern void v9 (signed int, signed short, unsigned char);
extern void (*v10) (signed int, signed short, unsigned char);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern signed short v15 (unsigned short, unsigned char, unsigned int);
extern signed short (*v16) (unsigned short, unsigned char, unsigned int);
extern unsigned char v17 (signed char, unsigned short, signed short);
extern unsigned char (*v18) (signed char, unsigned short, signed short);
extern unsigned short v19 (signed char);
extern unsigned short (*v20) (signed char);
extern signed char v21 (unsigned short, signed char);
extern signed char (*v22) (unsigned short, signed char);
extern signed char v23 (unsigned char, signed int, signed int);
extern signed char (*v24) (unsigned char, signed int, signed int);
extern signed short v25 (signed short);
extern signed short (*v26) (signed short);
extern signed short v27 (unsigned short, unsigned int, signed int, unsigned int);
extern signed short (*v28) (unsigned short, unsigned int, signed int, unsigned int);
unsigned char v29 (signed char);
unsigned char (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v76 = 4U;
signed int v75 = 0;
signed int v74 = -4;

unsigned char v29 (signed char v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = 1;
signed int v79 = 1;
unsigned char v78 = 4;
trace++;
switch (trace)
{
case 1: 
return v78;
default: abort ();
}
}
}
}

void v3 (signed char v81, signed int v82, signed short v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 2;
signed short v85 = -4;
unsigned int v84 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
