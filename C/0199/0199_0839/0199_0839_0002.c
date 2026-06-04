#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned char v5 (unsigned char, signed char, signed short);
extern unsigned char (*v6) (unsigned char, signed char, signed short);
extern unsigned int v7 (signed short, unsigned int);
extern unsigned int (*v8) (signed short, unsigned int);
signed int v9 (void);
signed int (*v10) (void) = v9;
signed short v11 (signed char);
signed short (*v12) (signed char) = v11;
signed short v13 (signed short, signed int, unsigned int, signed int);
signed short (*v14) (signed short, signed int, unsigned int, signed int) = v13;
extern signed char v15 (signed short, unsigned char);
extern signed char (*v16) (signed short, unsigned char);
extern unsigned char v17 (unsigned short, unsigned char);
extern unsigned char (*v18) (unsigned short, unsigned char);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
extern unsigned short v23 (unsigned char, signed short, signed char);
extern unsigned short (*v24) (unsigned char, signed short, signed char);
extern unsigned short v25 (signed short, signed char);
extern unsigned short (*v26) (signed short, signed char);
signed int v27 (void);
signed int (*v28) (void) = v27;
signed char v29 (unsigned int, signed char);
signed char (*v30) (unsigned int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v82 = 6U;
unsigned int v81 = 6U;
signed char v80 = -3;

signed char v29 (unsigned int v83, signed char v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned short v87 = 2;
unsigned short v86 = 4;
signed int v85 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (void)
{
{
for (;;) {
unsigned int v90 = 7U;
unsigned short v89 = 6;
unsigned char v88 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed short v91, signed int v92, unsigned int v93, signed int v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = -1;
signed short v96 = 0;
unsigned int v95 = 6U;
trace++;
switch (trace)
{
case 1: 
return -2;
default: abort ();
}
}
}
}

signed short v11 (signed char v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = 2;
signed short v100 = 2;
signed int v99 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
unsigned char v104 = 6;
unsigned char v103 = 6;
signed int v102 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
