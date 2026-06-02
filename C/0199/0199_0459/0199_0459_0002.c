#include <stdlib.h>
unsigned int v1 (signed int, signed int);
unsigned int (*v2) (signed int, signed int) = v1;
unsigned char v3 (signed short, unsigned short, unsigned int);
unsigned char (*v4) (signed short, unsigned short, unsigned int) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned char v7 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v8) (unsigned char, unsigned short, unsigned short);
extern void v9 (void);
extern void (*v10) (void);
signed short v11 (unsigned int, signed char, unsigned short, unsigned short);
signed short (*v12) (unsigned int, signed char, unsigned short, unsigned short) = v11;
extern void v13 (unsigned short);
extern void (*v14) (unsigned short);
extern signed char v15 (signed char);
extern signed char (*v16) (signed char);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern unsigned int v19 (signed char, signed int, unsigned short);
extern unsigned int (*v20) (signed char, signed int, unsigned short);
extern signed int v21 (signed short, unsigned short, unsigned char);
extern signed int (*v22) (signed short, unsigned short, unsigned char);
extern signed char v23 (signed short, unsigned int);
extern signed char (*v24) (signed short, unsigned int);
extern signed short v25 (signed short, unsigned short, signed int);
extern signed short (*v26) (signed short, unsigned short, signed int);
extern unsigned char v27 (unsigned int, unsigned int, signed char);
extern unsigned char (*v28) (unsigned int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v69 = -2;
signed short v68 = -3;
signed short v67 = -4;

unsigned char v17 (void)
{
{
for (;;) {
signed char v72 = 1;
signed char v71 = -3;
signed short v70 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned int v73, signed char v74, unsigned short v75, unsigned short v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed int v79 = -1;
unsigned int v78 = 6U;
unsigned short v77 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed short v80, unsigned short v81, unsigned int v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 5;
unsigned int v84 = 4U;
signed short v83 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed int v86, signed int v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = -4;
unsigned int v89 = 0U;
signed char v88 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed char v91;
signed char v92;
v91 = 0 + 1;
v92 = v15 (v91);
history[history_index++] = (int)v92;
}
break;
case 4: 
{
unsigned char v93;
unsigned short v94;
unsigned short v95;
unsigned char v96;
v93 = 5 - 5;
v94 = 3 - 2;
v95 = 6 + 3;
v96 = v7 (v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 12: 
return 0U;
default: abort ();
}
}
}
}
