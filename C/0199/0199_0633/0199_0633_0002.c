#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
extern unsigned char v3 (signed char, unsigned char, signed char);
extern unsigned char (*v4) (signed char, unsigned char, signed char);
extern signed char v5 (signed char, signed int);
extern signed char (*v6) (signed char, signed int);
signed char v7 (signed short);
signed char (*v8) (signed short) = v7;
extern unsigned int v9 (signed int);
extern unsigned int (*v10) (signed int);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed short v13 (signed int, signed short, signed short, signed int);
extern signed short (*v14) (signed int, signed short, signed short, signed int);
extern signed int v15 (unsigned int, signed short, unsigned char, unsigned short);
extern signed int (*v16) (unsigned int, signed short, unsigned char, unsigned short);
extern signed char v17 (unsigned short, signed short, unsigned char, unsigned int);
extern signed char (*v18) (unsigned short, signed short, unsigned char, unsigned int);
unsigned int v19 (signed int, signed char);
unsigned int (*v20) (signed int, signed char) = v19;
extern void v21 (signed short, signed char);
extern void (*v22) (signed short, signed char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
unsigned int v25 (unsigned short, unsigned int, unsigned int);
unsigned int (*v26) (unsigned short, unsigned int, unsigned int) = v25;
extern signed char v27 (signed char, signed int, unsigned char, signed char);
extern signed char (*v28) (signed char, signed int, unsigned char, signed char);
signed short v29 (unsigned short);
signed short (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v80 = 7;
signed char v79 = -1;
signed char v78 = 3;

signed short v29 (unsigned short v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 2U;
unsigned short v83 = 3;
unsigned short v82 = 0;
trace++;
switch (trace)
{
case 1: 
return 2;
case 9: 
return 3;
default: abort ();
}
}
}
}

unsigned int v25 (unsigned short v85, unsigned int v86, unsigned int v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned int v90 = 0U;
unsigned short v89 = 2;
unsigned int v88 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed int v91, signed char v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 2;
unsigned int v94 = 5U;
unsigned char v93 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed short v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned int v99 = 6U;
signed short v98 = 0;
signed char v97 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
