#include <stdlib.h>
extern signed int v1 (unsigned int, signed char, unsigned int, signed short);
extern signed int (*v2) (unsigned int, signed char, unsigned int, signed short);
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern signed short v7 (unsigned char, signed char, unsigned short);
extern signed short (*v8) (unsigned char, signed char, unsigned short);
unsigned int v9 (signed int, signed short, signed int, signed int);
unsigned int (*v10) (signed int, signed short, signed int, signed int) = v9;
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern signed int v13 (unsigned short, signed char, signed short, signed int);
extern signed int (*v14) (unsigned short, signed char, signed short, signed int);
extern signed short v17 (unsigned char, signed short);
extern signed short (*v18) (unsigned char, signed short);
signed int v19 (unsigned char, signed char, signed short);
signed int (*v20) (unsigned char, signed char, signed short) = v19;
extern unsigned short v21 (unsigned char, unsigned short);
extern unsigned short (*v22) (unsigned char, unsigned short);
extern unsigned char v25 (unsigned int, signed int, unsigned char, unsigned short);
extern unsigned char (*v26) (unsigned int, signed int, unsigned char, unsigned short);
extern void v27 (unsigned char, signed int, signed short, unsigned int);
extern void (*v28) (unsigned char, signed int, signed short, unsigned int);
signed short v29 (unsigned char, signed int, signed int);
signed short (*v30) (unsigned char, signed int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v71 = 0;
signed int v70 = 3;
signed char v69 = 1;

signed short v29 (unsigned char v72, signed int v73, signed int v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = -2;
unsigned int v76 = 7U;
signed char v75 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned char v78, signed char v79, signed short v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 6U;
unsigned char v82 = 2;
unsigned short v81 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed int v84, signed short v85, signed int v86, signed int v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned int v90 = 3U;
unsigned char v89 = 4;
unsigned char v88 = 5;
trace++;
switch (trace)
{
case 10: 
{
signed char v91;
signed char v92;
v91 = -2 - -2;
v92 = v5 (v91);
history[history_index++] = (int)v92;
}
break;
case 12: 
return 6U;
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
unsigned char v95 = 4;
unsigned short v94 = 6;
unsigned char v93 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
