#include <stdlib.h>
extern signed int v3 (unsigned int);
extern signed int (*v4) (unsigned int);
unsigned int v5 (signed short, signed int, unsigned short);
unsigned int (*v6) (signed short, signed int, unsigned short) = v5;
extern unsigned int v7 (signed char, unsigned int);
extern unsigned int (*v8) (signed char, unsigned int);
signed short v9 (signed short, signed int, signed char, unsigned short);
signed short (*v10) (signed short, signed int, signed char, unsigned short) = v9;
extern signed short v11 (unsigned int, signed short);
extern signed short (*v12) (unsigned int, signed short);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed short v15 (unsigned short, signed short);
extern signed short (*v16) (unsigned short, signed short);
unsigned char v17 (unsigned int);
unsigned char (*v18) (unsigned int) = v17;
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v75 = 7;
signed short v74 = 2;
unsigned int v73 = 1U;

unsigned char v19 (void)
{
{
for (;;) {
signed short v78 = -4;
signed short v77 = 0;
signed short v76 = -1;
trace++;
switch (trace)
{
case 10: 
{
signed int v79;
v79 = v29 ();
history[history_index++] = (int)v79;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

unsigned char v17 (unsigned int v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
signed char v83 = 1;
signed int v82 = -1;
signed int v81 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed short v84, signed int v85, signed char v86, unsigned short v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 0;
signed int v89 = 3;
unsigned char v88 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed short v91, signed int v92, unsigned short v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 6;
signed char v95 = 2;
signed int v94 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
