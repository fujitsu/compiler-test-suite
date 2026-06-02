#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char);
extern unsigned char (*v2) (unsigned short, signed char);
extern unsigned int v3 (signed short, signed int);
extern unsigned int (*v4) (signed short, signed int);
extern unsigned short v5 (unsigned short, signed char, signed short);
extern unsigned short (*v6) (unsigned short, signed char, signed short);
extern signed short v7 (signed int, unsigned short, unsigned short);
extern signed short (*v8) (signed int, unsigned short, unsigned short);
extern unsigned char v9 (unsigned int, signed char, signed char, signed short);
extern unsigned char (*v10) (unsigned int, signed char, signed char, signed short);
extern void v11 (void);
extern void (*v12) (void);
extern signed short v13 (unsigned short, unsigned short);
extern signed short (*v14) (unsigned short, unsigned short);
signed char v15 (unsigned int, signed char, signed char, signed short);
signed char (*v16) (unsigned int, signed char, signed char, signed short) = v15;
extern signed int v17 (unsigned char, signed short);
extern signed int (*v18) (unsigned char, signed short);
signed short v19 (unsigned int, signed char, signed short);
signed short (*v20) (unsigned int, signed char, signed short) = v19;
extern void v21 (signed short, signed char, signed short);
extern void (*v22) (signed short, signed char, signed short);
extern void v23 (unsigned short, unsigned int, unsigned short);
extern void (*v24) (unsigned short, unsigned int, unsigned short);
extern void v25 (signed short, signed short);
extern void (*v26) (signed short, signed short);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v116 = -1;
unsigned short v115 = 1;
unsigned char v114 = 6;

signed short v19 (unsigned int v117, signed char v118, signed short v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 5;
unsigned int v121 = 1U;
signed int v120 = 2;
trace++;
switch (trace)
{
case 2: 
return 3;
case 6: 
return -2;
default: abort ();
}
}
}
}

signed char v15 (unsigned int v123, signed char v124, signed char v125, signed short v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 2;
unsigned char v128 = 5;
signed short v127 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
