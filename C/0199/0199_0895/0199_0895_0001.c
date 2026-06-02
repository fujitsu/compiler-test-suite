#include <stdlib.h>
signed char v3 (void);
signed char (*v4) (void) = v3;
unsigned char v5 (signed char);
unsigned char (*v6) (signed char) = v5;
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (signed char, signed short, unsigned char, unsigned char);
extern unsigned int (*v10) (signed char, signed short, unsigned char, unsigned char);
extern signed char v11 (unsigned char, signed char, unsigned short);
extern signed char (*v12) (unsigned char, signed char, unsigned short);
extern unsigned char v13 (signed short, signed short, signed short);
extern unsigned char (*v14) (signed short, signed short, signed short);
extern unsigned char v15 (signed short);
extern unsigned char (*v16) (signed short);
extern unsigned int v17 (unsigned int, signed short);
extern unsigned int (*v18) (unsigned int, signed short);
extern void v21 (void);
extern void (*v22) (void);
extern signed char v23 (signed short, unsigned int, signed int);
extern signed char (*v24) (signed short, unsigned int, signed int);
extern unsigned char v25 (signed int, signed short);
extern unsigned char (*v26) (signed int, signed short);
extern unsigned char v29 (unsigned int, unsigned int, signed int, signed int);
extern unsigned char (*v30) (unsigned int, unsigned int, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v59 = 3;
signed int v58 = 1;
unsigned int v57 = 4U;

unsigned char v5 (signed char v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = -1;
unsigned char v62 = 3;
unsigned int v61 = 6U;
trace++;
switch (trace)
{
case 4: 
{
signed short v64;
unsigned char v65;
v64 = 1 + v63;
v65 = v15 (v64);
history[history_index++] = (int)v65;
}
break;
case 14: 
return v62;
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned char v68 = 1;
unsigned short v67 = 5;
signed short v66 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
