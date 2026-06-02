#include <stdlib.h>
extern signed short v1 (unsigned char);
extern signed short (*v2) (unsigned char);
extern signed char v3 (signed short, signed char, signed int, signed short);
extern signed char (*v4) (signed short, signed char, signed int, signed short);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
signed int v7 (unsigned char, unsigned char, unsigned short, signed short);
signed int (*v8) (unsigned char, unsigned char, unsigned short, signed short) = v7;
unsigned short v9 (unsigned char, signed char);
unsigned short (*v10) (unsigned char, signed char) = v9;
extern signed char v11 (unsigned int, unsigned int);
extern signed char (*v12) (unsigned int, unsigned int);
extern signed int v13 (unsigned short, unsigned int, signed char, signed char);
extern signed int (*v14) (unsigned short, unsigned int, signed char, signed char);
extern signed short v15 (unsigned short, unsigned short, signed short);
extern signed short (*v16) (unsigned short, unsigned short, signed short);
unsigned int v17 (unsigned short, unsigned short, unsigned char);
unsigned int (*v18) (unsigned short, unsigned short, unsigned char) = v17;
extern unsigned int v19 (signed int, unsigned char, signed int, unsigned int);
extern unsigned int (*v20) (signed int, unsigned char, signed int, unsigned int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (unsigned int, signed short, unsigned short, signed char);
extern unsigned int (*v24) (unsigned int, signed short, unsigned short, signed char);
signed int v25 (signed short, unsigned short);
signed int (*v26) (signed short, unsigned short) = v25;
extern unsigned int v27 (signed short, signed int, unsigned short);
extern unsigned int (*v28) (signed short, signed int, unsigned short);
extern signed char v29 (unsigned char);
extern signed char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v83 = -4;
signed short v82 = 2;
unsigned int v81 = 1U;

signed int v25 (signed short v84, unsigned short v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = -1;
signed char v87 = -4;
signed short v86 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v89, unsigned short v90, unsigned char v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 3;
unsigned char v93 = 4;
unsigned int v92 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned char v95, signed char v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 3;
signed char v98 = 3;
unsigned char v97 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned char v100, unsigned char v101, unsigned short v102, signed short v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned short v106 = 0;
signed char v105 = 0;
signed int v104 = -4;
trace++;
switch (trace)
{
case 3: 
return -4;
default: abort ();
}
}
}
}
