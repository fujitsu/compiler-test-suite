#include <stdlib.h>
extern signed int v1 (signed short, unsigned short);
extern signed int (*v2) (signed short, unsigned short);
extern unsigned int v3 (signed char, unsigned char);
extern unsigned int (*v4) (signed char, unsigned char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed char v7 (signed short, signed int, signed char);
extern signed char (*v8) (signed short, signed int, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned short v11 (signed char, signed int);
unsigned short (*v12) (signed char, signed int) = v11;
extern signed short v13 (unsigned int);
extern signed short (*v14) (unsigned int);
extern unsigned char v15 (signed int, signed char, unsigned int, signed short);
extern unsigned char (*v16) (signed int, signed char, unsigned int, signed short);
unsigned short v17 (signed int, signed char);
unsigned short (*v18) (signed int, signed char) = v17;
extern unsigned char v19 (signed char, unsigned char, signed char, signed char);
extern unsigned char (*v20) (signed char, unsigned char, signed char, signed char);
unsigned int v21 (signed char, signed int, unsigned int);
unsigned int (*v22) (signed char, signed int, unsigned int) = v21;
extern unsigned short v23 (unsigned int, unsigned int);
extern unsigned short (*v24) (unsigned int, unsigned int);
extern unsigned char v25 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned char (*v26) (unsigned char, unsigned short, unsigned short, unsigned char);
extern signed char v27 (signed short, signed char, signed char, signed short);
extern signed char (*v28) (signed short, signed char, signed char, signed short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v72 = 0;
signed short v71 = -2;
signed short v70 = -1;

unsigned int v21 (signed char v73, signed int v74, unsigned int v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = 3;
unsigned short v77 = 6;
unsigned char v76 = 5;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v79;
unsigned int v80;
unsigned short v81;
v79 = v75 + 4U;
v80 = v75 - v75;
v81 = v23 (v79, v80);
history[history_index++] = (int)v81;
}
break;
case 8: 
{
unsigned int v82;
unsigned int v83;
unsigned short v84;
v82 = 6U + 5U;
v83 = v75 - v75;
v84 = v23 (v82, v83);
history[history_index++] = (int)v84;
}
break;
case 10: 
return 5U;
default: abort ();
}
}
}
}

unsigned short v17 (signed int v85, signed char v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 3;
signed int v88 = 0;
signed int v87 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed char v90, signed int v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = -1;
signed short v93 = -1;
signed int v92 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
