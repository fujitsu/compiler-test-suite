#include <stdlib.h>
extern signed char v1 (signed char, signed char);
extern signed char (*v2) (signed char, signed char);
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern void v5 (signed int, signed short, signed int, unsigned short);
extern void (*v6) (signed int, signed short, signed int, unsigned short);
unsigned int v7 (unsigned short, signed char, unsigned short, signed int);
unsigned int (*v8) (unsigned short, signed char, unsigned short, signed int) = v7;
extern unsigned int v11 (signed short, unsigned char, unsigned short, unsigned char);
extern unsigned int (*v12) (signed short, unsigned char, unsigned short, unsigned char);
extern void v13 (signed int, signed char, signed char);
extern void (*v14) (signed int, signed char, signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
signed short v25 (unsigned short, unsigned char);
signed short (*v26) (unsigned short, unsigned char) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v67 = 5;
signed char v66 = -3;
unsigned short v65 = 0;

signed short v25 (unsigned short v68, unsigned char v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -4;
unsigned char v71 = 0;
signed short v70 = 0;
trace++;
switch (trace)
{
case 9: 
return -3;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v73, signed char v74, unsigned short v75, signed int v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 2;
signed short v78 = 2;
signed int v77 = -1;
trace++;
switch (trace)
{
case 3: 
{
signed short v80;
unsigned char v81;
unsigned short v82;
unsigned char v83;
unsigned int v84;
v80 = 2 - 2;
v81 = 6 - 3;
v82 = v73 - v73;
v83 = 0 + 2;
v84 = v11 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 15: 
return 5U;
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
signed char v87 = -2;
signed char v86 = 2;
signed short v85 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
