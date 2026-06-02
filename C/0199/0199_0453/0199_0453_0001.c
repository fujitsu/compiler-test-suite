#include <stdlib.h>
extern unsigned int v3 (signed int, unsigned short, unsigned short, unsigned int);
extern unsigned int (*v4) (signed int, unsigned short, unsigned short, unsigned int);
extern signed short v5 (signed char, signed int);
extern signed short (*v6) (signed char, signed int);
signed short v7 (signed int, signed int, unsigned int, unsigned int);
signed short (*v8) (signed int, signed int, unsigned int, unsigned int) = v7;
extern void v9 (signed int, unsigned short, signed int);
extern void (*v10) (signed int, unsigned short, signed int);
extern signed char v11 (signed int, unsigned short, signed short);
extern signed char (*v12) (signed int, unsigned short, signed short);
extern unsigned short v13 (unsigned int, signed short, signed short, unsigned char);
extern unsigned short (*v14) (unsigned int, signed short, signed short, unsigned char);
unsigned short v15 (unsigned char, unsigned char, unsigned short, unsigned short);
unsigned short (*v16) (unsigned char, unsigned char, unsigned short, unsigned short) = v15;
extern signed int v17 (signed char, unsigned char);
extern signed int (*v18) (signed char, unsigned char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (signed int, unsigned int, unsigned char, unsigned int);
extern signed short (*v22) (signed int, unsigned int, unsigned char, unsigned int);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern signed short v25 (unsigned int, signed short, signed char, unsigned char);
extern signed short (*v26) (unsigned int, signed short, signed char, unsigned char);
extern unsigned char v27 (signed char, signed char);
extern unsigned char (*v28) (signed char, signed char);
extern unsigned short v29 (signed char, signed char, unsigned char);
extern unsigned short (*v30) (signed char, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v75 = -1;
unsigned short v74 = 1;
unsigned short v73 = 2;

signed short v23 (void)
{
{
for (;;) {
unsigned short v78 = 5;
signed int v77 = 1;
unsigned int v76 = 3U;
trace++;
switch (trace)
{
case 1: 
{
signed char v79;
signed char v80;
unsigned char v81;
unsigned short v82;
v79 = 3 - -2;
v80 = 3 - 0;
v81 = 4 + 7;
v82 = v29 (v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 3: 
return 1;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned char v83, unsigned char v84, unsigned short v85, unsigned short v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = -1;
signed char v88 = 0;
unsigned int v87 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed int v90, signed int v91, unsigned int v92, unsigned int v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = -2;
signed int v95 = 0;
signed short v94 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
