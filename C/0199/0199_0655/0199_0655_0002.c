#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char, unsigned int);
extern signed short (*v2) (unsigned char, unsigned char, unsigned int);
unsigned short v3 (signed char, unsigned char, signed char, signed short);
unsigned short (*v4) (signed char, unsigned char, signed char, signed short) = v3;
unsigned short v5 (signed short, unsigned char, unsigned short, signed char);
unsigned short (*v6) (signed short, unsigned char, unsigned short, signed char) = v5;
extern signed char v7 (unsigned short, signed short, unsigned char);
extern signed char (*v8) (unsigned short, signed short, unsigned char);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern signed int v11 (unsigned char, unsigned char, signed int, signed short);
extern signed int (*v12) (unsigned char, unsigned char, signed int, signed short);
extern signed char v13 (signed short, signed char);
extern signed char (*v14) (signed short, signed char);
extern void v15 (unsigned char, signed char);
extern void (*v16) (unsigned char, signed char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
signed int v21 (unsigned short, signed int, unsigned char);
signed int (*v22) (unsigned short, signed int, unsigned char) = v21;
extern signed int v23 (unsigned int, unsigned int, signed int);
extern signed int (*v24) (unsigned int, unsigned int, signed int);
extern signed short v25 (unsigned short);
extern signed short (*v26) (unsigned short);
extern signed int v27 (unsigned int, unsigned int, unsigned int);
extern signed int (*v28) (unsigned int, unsigned int, unsigned int);
unsigned short v29 (signed int);
unsigned short (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v80 = -3;
unsigned int v79 = 5U;
unsigned short v78 = 3;

unsigned short v29 (signed int v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = -1;
signed int v83 = 3;
unsigned char v82 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned short v85, signed int v86, unsigned char v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned int v90 = 5U;
unsigned int v89 = 0U;
unsigned short v88 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed short v91, unsigned char v92, unsigned short v93, signed char v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = -4;
signed int v96 = 1;
unsigned int v95 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed char v98, unsigned char v99, signed char v100, signed short v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = -2;
signed short v103 = 0;
unsigned int v102 = 2U;
trace++;
switch (trace)
{
case 2: 
{
signed short v105;
signed char v106;
signed char v107;
v105 = v103 - v104;
v106 = v100 - -1;
v107 = v13 (v105, v106);
history[history_index++] = (int)v107;
}
break;
case 14: 
return 7;
default: abort ();
}
}
}
}
