#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern signed int v11 (signed int, signed int);
extern signed int (*v12) (signed int, signed int);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern unsigned char v15 (unsigned char, unsigned short, signed char);
extern unsigned char (*v16) (unsigned char, unsigned short, signed char);
extern void v17 (unsigned short, unsigned char, signed int, unsigned int);
extern void (*v18) (unsigned short, unsigned char, signed int, unsigned int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v21 (void);
extern void (*v22) (void);
extern void v23 (signed char);
extern void (*v24) (signed char);
extern unsigned char v25 (unsigned short, signed short, signed char, signed short);
extern unsigned char (*v26) (unsigned short, signed short, signed char, signed short);
unsigned int v27 (signed char, signed char, unsigned int);
unsigned int (*v28) (signed char, signed char, unsigned int) = v27;
signed char v29 (signed short, unsigned int, unsigned char, unsigned char);
signed char (*v30) (signed short, unsigned int, unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v72 = -2;
unsigned short v71 = 0;
signed char v70 = 0;

signed char v29 (signed short v73, unsigned int v74, unsigned char v75, unsigned char v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = 0;
unsigned char v78 = 1;
unsigned short v77 = 3;
trace++;
switch (trace)
{
case 1: 
return v79;
default: abort ();
}
}
}
}

unsigned int v27 (signed char v80, signed char v81, unsigned int v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 3U;
signed short v84 = -4;
signed int v83 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
signed short v88 = -4;
unsigned char v87 = 7;
signed int v86 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v89;
unsigned char v90;
signed int v91;
unsigned int v92;
v89 = 0 - 5;
v90 = 5 + 1;
v91 = 2 + v86;
v92 = 4U + 6U;
v17 (v89, v90, v91, v92);
}
break;
case 5: 
{
unsigned short v93;
unsigned char v94;
signed int v95;
unsigned int v96;
v93 = 3 + 4;
v94 = 2 + 0;
v95 = v86 - 1;
v96 = 0U - 6U;
v17 (v93, v94, v95, v96);
}
break;
case 11: 
return 2U;
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
unsigned int v99 = 5U;
unsigned short v98 = 1;
signed int v97 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
