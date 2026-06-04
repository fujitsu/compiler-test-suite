#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned int v5 (signed int, signed char, unsigned int, signed int);
extern unsigned int (*v6) (signed int, signed char, unsigned int, signed int);
extern signed int v7 (signed int, unsigned short, unsigned int);
extern signed int (*v8) (signed int, unsigned short, unsigned int);
extern unsigned int v9 (unsigned int, unsigned int, unsigned int);
extern unsigned int (*v10) (unsigned int, unsigned int, unsigned int);
extern unsigned short v11 (unsigned char, signed short, signed int, unsigned short);
extern unsigned short (*v12) (unsigned char, signed short, signed int, unsigned short);
extern void v13 (void);
extern void (*v14) (void);
signed int v15 (unsigned int);
signed int (*v16) (unsigned int) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
unsigned short v19 (unsigned short, unsigned int);
unsigned short (*v20) (unsigned short, unsigned int) = v19;
signed short v21 (void);
signed short (*v22) (void) = v21;
signed int v25 (signed int);
signed int (*v26) (signed int) = v25;
extern signed int v27 (unsigned int, unsigned int, unsigned int);
extern signed int (*v28) (unsigned int, unsigned int, unsigned int);
extern signed int v29 (signed char, unsigned short, unsigned short);
extern signed int (*v30) (signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v72 = 2;
unsigned int v71 = 4U;
signed int v70 = 3;

signed int v25 (signed int v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 0U;
signed int v75 = -3;
signed int v74 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (void)
{
{
for (;;) {
signed char v79 = 0;
unsigned int v78 = 3U;
unsigned char v77 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned short v80, unsigned int v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 4U;
signed char v83 = -1;
unsigned char v82 = 1;
trace++;
switch (trace)
{
case 1: 
return 4;
default: abort ();
}
}
}
}

signed int v15 (unsigned int v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = 2;
signed int v87 = 2;
signed char v86 = -2;
trace++;
switch (trace)
{
case 3: 
return 0;
case 6: 
{
unsigned char v89;
signed short v90;
signed int v91;
unsigned short v92;
unsigned short v93;
v89 = 4 + 3;
v90 = 2 - -4;
v91 = 0 + -3;
v92 = 1 + 7;
v93 = v11 (v89, v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 14: 
return v87;
default: abort ();
}
}
}
}
