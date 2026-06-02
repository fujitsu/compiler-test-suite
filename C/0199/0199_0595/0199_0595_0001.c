#include <stdlib.h>
unsigned char v1 (signed int, signed char, signed short);
unsigned char (*v2) (signed int, signed char, signed short) = v1;
extern signed char v3 (unsigned char, signed char, unsigned short, unsigned char);
extern signed char (*v4) (unsigned char, signed char, unsigned short, unsigned char);
extern signed int v5 (signed int, unsigned int, unsigned char, unsigned int);
extern signed int (*v6) (signed int, unsigned int, unsigned char, unsigned int);
signed short v7 (unsigned short, signed short, unsigned short, unsigned char);
signed short (*v8) (unsigned short, signed short, unsigned short, unsigned char) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern unsigned int v11 (signed int, unsigned char, unsigned int, signed short);
extern unsigned int (*v12) (signed int, unsigned char, unsigned int, signed short);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
signed short v17 (void);
signed short (*v18) (void) = v17;
extern unsigned short v19 (signed char, signed short, signed int);
extern unsigned short (*v20) (signed char, signed short, signed int);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern signed char v23 (signed short);
extern signed char (*v24) (signed short);
extern signed char v27 (unsigned char, signed char);
extern signed char (*v28) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v73 = -4;
signed short v72 = -1;
unsigned char v71 = 6;

signed short v17 (void)
{
{
for (;;) {
signed int v76 = -3;
signed char v75 = 1;
unsigned int v74 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v77, signed short v78, unsigned short v79, unsigned char v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed char v83 = 1;
signed int v82 = 3;
signed int v81 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed int v84, signed char v85, signed short v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = 3;
signed short v88 = 0;
unsigned char v87 = 0;
trace++;
switch (trace)
{
case 0: 
return v87;
case 1: 
{
v9 ();
}
break;
case 17: 
return 4;
default: abort ();
}
}
}
}
