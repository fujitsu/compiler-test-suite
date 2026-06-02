#include <stdlib.h>
extern signed char v1 (signed char, signed int, unsigned short);
extern signed char (*v2) (signed char, signed int, unsigned short);
extern signed int v3 (signed char, unsigned char, unsigned int, unsigned short);
extern signed int (*v4) (signed char, unsigned char, unsigned int, unsigned short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (unsigned short, signed short);
extern unsigned int (*v8) (unsigned short, signed short);
extern unsigned char v9 (unsigned char);
extern unsigned char (*v10) (unsigned char);
extern unsigned int v11 (unsigned int);
extern unsigned int (*v12) (unsigned int);
extern unsigned short v13 (signed char, unsigned char, unsigned char);
extern unsigned short (*v14) (signed char, unsigned char, unsigned char);
extern void v15 (signed short);
extern void (*v16) (signed short);
signed short v17 (unsigned short, signed short);
signed short (*v18) (unsigned short, signed short) = v17;
extern void v19 (unsigned int);
extern void (*v20) (unsigned int);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern signed short v23 (unsigned char, signed int, signed int);
extern signed short (*v24) (unsigned char, signed int, signed int);
void v25 (void);
void (*v26) (void) = v25;
extern signed int v27 (signed int);
extern signed int (*v28) (signed int);
extern signed short v29 (signed char, signed short);
extern signed short (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v56 = 1;
signed char v55 = -3;
signed int v54 = -3;

void v25 (void)
{
{
for (;;) {
signed int v59 = 2;
signed int v58 = 1;
signed char v57 = -4;
trace++;
switch (trace)
{
case 6: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed short v17 (unsigned short v60, signed short v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed int v64 = 2;
signed short v63 = 0;
unsigned char v62 = 3;
trace++;
switch (trace)
{
case 1: 
return v63;
default: abort ();
}
}
}
}
