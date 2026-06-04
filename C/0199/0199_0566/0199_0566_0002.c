#include <stdlib.h>
unsigned int v1 (signed char, unsigned int, unsigned char);
unsigned int (*v2) (signed char, unsigned int, unsigned char) = v1;
signed char v3 (unsigned short, unsigned char, signed int, signed int);
signed char (*v4) (unsigned short, unsigned char, signed int, signed int) = v3;
extern signed int v5 (signed int, signed int, signed short, unsigned char);
extern signed int (*v6) (signed int, signed int, signed short, unsigned char);
signed char v7 (unsigned char, signed char);
signed char (*v8) (unsigned char, signed char) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned short v11 (signed int, unsigned short);
extern unsigned short (*v12) (signed int, unsigned short);
extern signed short v13 (unsigned short, unsigned int, signed short);
extern signed short (*v14) (unsigned short, unsigned int, signed short);
extern signed short v15 (unsigned char, unsigned int);
extern signed short (*v16) (unsigned char, unsigned int);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (signed short, unsigned char, unsigned short, signed short);
extern unsigned short (*v22) (signed short, unsigned char, unsigned short, signed short);
extern signed short v23 (signed char);
extern signed short (*v24) (signed char);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned short v27 (unsigned short, signed int, signed int, signed int);
extern unsigned short (*v28) (unsigned short, signed int, signed int, signed int);
unsigned int v29 (signed short, unsigned short, signed char, signed int);
unsigned int (*v30) (signed short, unsigned short, signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v68 = 1;
unsigned int v67 = 6U;
unsigned char v66 = 2;

unsigned int v29 (signed short v69, unsigned short v70, signed char v71, signed int v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed short v75 = -1;
signed char v74 = 1;
signed int v73 = 3;
trace++;
switch (trace)
{
case 10: 
return 1U;
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned short v78 = 5;
signed char v77 = -2;
unsigned int v76 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v79, signed char v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = 1;
unsigned short v82 = 5;
unsigned char v81 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned short v84, unsigned char v85, signed int v86, signed int v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 2;
signed short v89 = -4;
unsigned char v88 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed char v91, unsigned int v92, unsigned char v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = -1;
signed char v95 = 0;
unsigned char v94 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed short v97;
unsigned char v98;
unsigned short v99;
signed short v100;
unsigned short v101;
v97 = -1 + -4;
v98 = 5 + v94;
v99 = 4 - 2;
v100 = 3 - -2;
v101 = v21 (v97, v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 16: 
return v92;
default: abort ();
}
}
}
}
