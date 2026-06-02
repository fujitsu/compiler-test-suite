#include <stdlib.h>
extern unsigned int v3 (unsigned short, signed int, unsigned int);
extern unsigned int (*v4) (unsigned short, signed int, unsigned int);
signed char v5 (unsigned char, signed short, unsigned char);
signed char (*v6) (unsigned char, signed short, unsigned char) = v5;
extern signed int v9 (unsigned char, unsigned short, unsigned short);
extern signed int (*v10) (unsigned char, unsigned short, unsigned short);
extern signed short v11 (signed char, unsigned short, unsigned char, unsigned short);
extern signed short (*v12) (signed char, unsigned short, unsigned char, unsigned short);
signed short v13 (void);
signed short (*v14) (void) = v13;
extern signed int v15 (signed short, unsigned short, unsigned short, signed short);
extern signed int (*v16) (signed short, unsigned short, unsigned short, signed short);
extern signed int v17 (unsigned int, unsigned short, signed short, unsigned int);
extern signed int (*v18) (unsigned int, unsigned short, signed short, unsigned int);
extern unsigned short v19 (signed int, signed short, signed int, unsigned int);
extern unsigned short (*v20) (signed int, signed short, signed int, unsigned int);
extern unsigned short v21 (unsigned int, signed char, signed int);
extern unsigned short (*v22) (unsigned int, signed char, signed int);
extern signed char v23 (signed int, unsigned int, unsigned short);
extern signed char (*v24) (signed int, unsigned int, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (unsigned int, signed char, unsigned char, unsigned int);
extern void (*v28) (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned char v29 (unsigned char, unsigned int, signed short);
extern unsigned char (*v30) (unsigned char, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v114 = 0;
unsigned char v113 = 2;
signed short v112 = -2;

signed short v13 (void)
{
{
for (;;) {
signed int v117 = -4;
signed char v116 = 3;
signed short v115 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned char v118, signed short v119, unsigned char v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed int v123 = 0;
signed short v122 = -3;
signed short v121 = -2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v124;
v124 = v25 ();
history[history_index++] = (int)v124;
}
break;
case 15: 
return 2;
default: abort ();
}
}
}
}
