#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern void v3 (void);
extern void (*v4) (void);
extern signed short v5 (unsigned short, signed short);
extern signed short (*v6) (unsigned short, signed short);
extern signed char v7 (void);
extern signed char (*v8) (void);
signed int v9 (unsigned short, signed short, signed int);
signed int (*v10) (unsigned short, signed short, signed int) = v9;
extern unsigned short v11 (unsigned int, unsigned int, unsigned char, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned int, unsigned char, unsigned char);
unsigned short v13 (unsigned char, unsigned char, signed int);
unsigned short (*v14) (unsigned char, unsigned char, signed int) = v13;
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern signed short v19 (unsigned int);
extern signed short (*v20) (unsigned int);
extern unsigned int v21 (signed short, unsigned char);
extern unsigned int (*v22) (signed short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
unsigned short v25 (signed int);
unsigned short (*v26) (signed int) = v25;
extern void v27 (unsigned int, signed int);
extern void (*v28) (unsigned int, signed int);
extern unsigned short v29 (signed int, unsigned int);
extern unsigned short (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v71 = 3;
signed int v70 = -2;
unsigned int v69 = 6U;

unsigned short v25 (signed int v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
signed char v75 = 1;
signed char v74 = -1;
signed int v73 = -4;
trace++;
switch (trace)
{
case 8: 
return 6;
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
unsigned short v78 = 4;
signed int v77 = 3;
signed int v76 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v79, unsigned char v80, signed int v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = 1;
unsigned short v83 = 6;
signed int v82 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned short v85, signed short v86, signed int v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = 2;
signed int v89 = 3;
signed int v88 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
