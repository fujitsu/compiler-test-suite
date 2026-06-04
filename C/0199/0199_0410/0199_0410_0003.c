#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned short, unsigned int);
extern unsigned int (*v2) (unsigned short, unsigned short, unsigned int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned int v7 (signed int, signed int, unsigned char, signed int);
extern unsigned int (*v8) (signed int, signed int, unsigned char, signed int);
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
extern signed char v11 (signed short, unsigned int);
extern signed char (*v12) (signed short, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned int v17 (signed char, unsigned int, unsigned short, signed int);
extern unsigned int (*v18) (signed char, unsigned int, unsigned short, signed int);
signed short v19 (unsigned int);
signed short (*v20) (unsigned int) = v19;
unsigned char v21 (signed short);
unsigned char (*v22) (signed short) = v21;
signed int v23 (void);
signed int (*v24) (void) = v23;
unsigned char v25 (unsigned char, unsigned char, signed char);
unsigned char (*v26) (unsigned char, unsigned char, signed char) = v25;
extern signed int v27 (signed int, signed int);
extern signed int (*v28) (signed int, signed int);
extern signed char v29 (unsigned char);
extern signed char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v84 = -2;
unsigned short v83 = 7;
unsigned char v82 = 0;

unsigned char v25 (unsigned char v85, unsigned char v86, signed char v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned int v90 = 4U;
unsigned short v89 = 5;
unsigned char v88 = 4;
trace++;
switch (trace)
{
case 6: 
return 5;
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
unsigned char v93 = 6;
unsigned int v92 = 0U;
signed int v91 = -1;
trace++;
switch (trace)
{
case 8: 
{
unsigned char v94;
unsigned int v95;
v94 = v93 - v93;
v95 = v9 (v94);
history[history_index++] = (int)v95;
}
break;
case 12: 
return v91;
default: abort ();
}
}
}
}

unsigned char v21 (signed short v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = 2;
unsigned short v98 = 6;
signed char v97 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned int v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = 1;
signed char v102 = -4;
unsigned short v101 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
