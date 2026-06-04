#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short, signed char, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned short, signed char, unsigned short);
extern unsigned int v3 (signed int, unsigned short);
extern unsigned int (*v4) (signed int, unsigned short);
signed int v5 (signed int, unsigned short, unsigned short, unsigned char);
signed int (*v6) (signed int, unsigned short, unsigned short, unsigned char) = v5;
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
extern signed short v9 (unsigned short, signed char, signed short, unsigned short);
extern signed short (*v10) (unsigned short, signed char, signed short, unsigned short);
extern signed short v11 (signed short, unsigned char);
extern signed short (*v12) (signed short, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned char v17 (signed int, unsigned char);
extern unsigned char (*v18) (signed int, unsigned char);
extern void v19 (unsigned short, signed char, signed char, signed char);
extern void (*v20) (unsigned short, signed char, signed char, signed char);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern signed char v23 (signed char, unsigned short, unsigned int);
extern signed char (*v24) (signed char, unsigned short, unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v55 = -4;
unsigned int v54 = 6U;
signed short v53 = 3;

unsigned int v29 (void)
{
{
for (;;) {
signed char v58 = -3;
unsigned int v57 = 5U;
unsigned int v56 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed int v59, unsigned short v60, unsigned short v61, unsigned char v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 7;
unsigned char v64 = 1;
signed short v63 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed int v66;
v66 = v27 ();
history[history_index++] = (int)v66;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}
