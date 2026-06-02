#include <stdlib.h>
extern void v1 (unsigned short, signed int, unsigned char);
extern void (*v2) (unsigned short, signed int, unsigned char);
extern void v3 (unsigned char, unsigned int, unsigned short, signed char);
extern void (*v4) (unsigned char, unsigned int, unsigned short, signed char);
signed int v7 (signed short, signed short, signed short);
signed int (*v8) (signed short, signed short, signed short) = v7;
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
signed short v13 (void);
signed short (*v14) (void) = v13;
extern unsigned int v15 (unsigned char, signed char, unsigned int);
extern unsigned int (*v16) (unsigned char, signed char, unsigned int);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned short v21 (signed short, unsigned char);
extern unsigned short (*v22) (signed short, unsigned char);
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned short v29 (unsigned short, unsigned int);
extern unsigned short (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v81 = 7;
signed int v80 = -2;
unsigned char v79 = 7;

signed char v17 (void)
{
{
for (;;) {
signed short v84 = 1;
unsigned int v83 = 2U;
unsigned char v82 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
unsigned short v87 = 6;
unsigned char v86 = 1;
unsigned char v85 = 4;
trace++;
switch (trace)
{
case 2: 
return 3;
case 4: 
return -3;
case 6: 
return 0;
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
signed int v90 = 0;
unsigned short v89 = 3;
signed short v88 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed short v91, signed short v92, signed short v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = -2;
unsigned short v95 = 1;
signed int v94 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
