#include <stdlib.h>
extern signed short v1 (unsigned int, unsigned short, unsigned int);
extern signed short (*v2) (unsigned int, unsigned short, unsigned int);
signed short v5 (unsigned char, signed char, signed short);
signed short (*v6) (unsigned char, signed char, signed short) = v5;
extern unsigned int v7 (unsigned int);
extern unsigned int (*v8) (unsigned int);
extern unsigned int v9 (signed char, signed char);
extern unsigned int (*v10) (signed char, signed char);
extern unsigned short v11 (signed char, unsigned short);
extern unsigned short (*v12) (signed char, unsigned short);
extern void v13 (unsigned short, unsigned short);
extern void (*v14) (unsigned short, unsigned short);
signed int v15 (unsigned short, signed char, signed short, signed char);
signed int (*v16) (unsigned short, signed char, signed short, signed char) = v15;
extern signed short v17 (unsigned short, signed char);
extern signed short (*v18) (unsigned short, signed char);
extern unsigned char v19 (unsigned short, signed int, unsigned short);
extern unsigned char (*v20) (unsigned short, signed int, unsigned short);
extern unsigned int v21 (signed char, unsigned short, unsigned int, signed short);
extern unsigned int (*v22) (signed char, unsigned short, unsigned int, signed short);
extern signed int v23 (unsigned char, signed short, unsigned char);
extern signed int (*v24) (unsigned char, signed short, unsigned char);
extern signed char v27 (signed char);
extern signed char (*v28) (signed char);
signed char v29 (unsigned short);
signed char (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v83 = -2;
signed int v82 = -4;
unsigned short v81 = 1;

signed char v29 (unsigned short v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = 1;
unsigned short v86 = 2;
signed char v85 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned short v88, signed char v89, signed short v90, signed char v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = 2;
unsigned char v93 = 7;
unsigned char v92 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned char v95, signed char v96, signed short v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 0;
signed char v99 = -2;
signed int v98 = -1;
trace++;
switch (trace)
{
case 1: 
return v97;
default: abort ();
}
}
}
}
