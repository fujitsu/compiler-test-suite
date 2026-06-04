#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
signed int v3 (void);
signed int (*v4) (void) = v3;
unsigned char v5 (signed int);
unsigned char (*v6) (signed int) = v5;
extern signed int v7 (signed int);
extern signed int (*v8) (signed int);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern unsigned short v15 (signed int, unsigned int);
extern unsigned short (*v16) (signed int, unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned short v21 (unsigned char, signed char, signed short);
extern unsigned short (*v22) (unsigned char, signed char, signed short);
extern unsigned int v23 (unsigned int, unsigned int, unsigned int, unsigned char);
extern unsigned int (*v24) (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed int v25 (unsigned short);
extern signed int (*v26) (unsigned short);
extern signed short v27 (signed char, unsigned char);
extern signed short (*v28) (signed char, unsigned char);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v73 = -4;
unsigned int v72 = 4U;
signed char v71 = -3;

unsigned char v5 (signed int v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = 2;
signed char v76 = -4;
signed char v75 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed short v78;
unsigned char v79;
v78 = 3 - 3;
v79 = v11 (v78);
history[history_index++] = (int)v79;
}
break;
case 13: 
return 7;
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
unsigned short v82 = 5;
signed int v81 = -2;
unsigned short v80 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
