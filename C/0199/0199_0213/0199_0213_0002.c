#include <stdlib.h>
extern signed short v3 (signed int, signed short, unsigned char, signed short);
extern signed short (*v4) (signed int, signed short, unsigned char, signed short);
extern signed int v5 (unsigned int, signed int, signed int);
extern signed int (*v6) (unsigned int, signed int, signed int);
extern void v7 (signed char, signed int);
extern void (*v8) (signed char, signed int);
extern unsigned short v9 (signed char, signed char, unsigned char);
extern unsigned short (*v10) (signed char, signed char, unsigned char);
signed int v11 (void);
signed int (*v12) (void) = v11;
unsigned char v13 (unsigned short, signed int);
unsigned char (*v14) (unsigned short, signed int) = v13;
extern signed int v15 (unsigned short, signed short);
extern signed int (*v16) (unsigned short, signed short);
unsigned int v17 (unsigned short);
unsigned int (*v18) (unsigned short) = v17;
extern void v19 (void);
extern void (*v20) (void);
extern signed short v21 (unsigned char, unsigned int);
extern signed short (*v22) (unsigned char, unsigned int);
signed char v23 (unsigned int, unsigned int);
signed char (*v24) (unsigned int, unsigned int) = v23;
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
extern unsigned short v27 (signed int, unsigned int, unsigned int);
extern unsigned short (*v28) (signed int, unsigned int, unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v85 = 3;
signed short v84 = 3;
unsigned char v83 = 4;

signed char v23 (unsigned int v86, unsigned int v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 7;
unsigned int v89 = 1U;
unsigned char v88 = 1;
trace++;
switch (trace)
{
case 1: 
return -2;
case 6: 
return -3;
case 8: 
return 0;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = 2;
unsigned short v93 = 4;
signed short v92 = -4;
trace++;
switch (trace)
{
case 3: 
return 2U;
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v95, signed int v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = 0;
signed char v98 = 1;
unsigned char v97 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
unsigned char v102 = 7;
signed char v101 = -2;
unsigned int v100 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
