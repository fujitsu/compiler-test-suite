#include <stdlib.h>
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern unsigned char v5 (signed int, unsigned short, signed char);
extern unsigned char (*v6) (signed int, unsigned short, signed char);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed short v11 (void);
extern signed short (*v12) (void);
signed short v13 (unsigned char);
signed short (*v14) (unsigned char) = v13;
extern unsigned int v15 (signed int, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v16) (signed int, unsigned short, unsigned int, unsigned char);
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (unsigned char, signed char, signed short, signed char);
extern signed char (*v22) (unsigned char, signed char, signed short, signed char);
extern signed int v23 (signed short, unsigned int, unsigned int, unsigned short);
extern signed int (*v24) (signed short, unsigned int, unsigned int, unsigned short);
extern signed int v25 (signed short);
extern signed int (*v26) (signed short);
extern signed char v27 (unsigned int, unsigned short, unsigned char, unsigned char);
extern signed char (*v28) (unsigned int, unsigned short, unsigned char, unsigned char);
extern void v29 (signed short, signed char);
extern void (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v63 = 7;
unsigned char v62 = 3;
signed int v61 = -1;

signed short v13 (unsigned char v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 5U;
unsigned int v66 = 0U;
unsigned short v65 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
unsigned char v70 = 0;
signed char v69 = 1;
signed int v68 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed short v71;
v71 = v9 ();
history[history_index++] = (int)v71;
}
break;
case 5: 
return v70;
default: abort ();
}
}
}
}
