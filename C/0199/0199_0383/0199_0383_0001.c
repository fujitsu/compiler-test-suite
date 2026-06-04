#include <stdlib.h>
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (signed short, unsigned int, unsigned char, unsigned int);
extern unsigned short (*v8) (signed short, unsigned int, unsigned char, unsigned int);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned short v11 (signed char, unsigned char, unsigned int);
extern unsigned short (*v12) (signed char, unsigned char, unsigned int);
unsigned int v13 (signed short, signed int, signed char, unsigned int);
unsigned int (*v14) (signed short, signed int, signed char, unsigned int) = v13;
unsigned int v15 (unsigned char, unsigned char);
unsigned int (*v16) (unsigned char, unsigned char) = v15;
signed char v17 (signed short, signed char);
signed char (*v18) (signed short, signed char) = v17;
extern signed short v19 (unsigned char, unsigned short);
extern signed short (*v20) (unsigned char, unsigned short);
extern unsigned char v21 (signed int, unsigned short, unsigned char, signed char);
extern unsigned char (*v22) (signed int, unsigned short, unsigned char, signed char);
extern signed short v23 (unsigned char, signed int);
extern signed short (*v24) (unsigned char, signed int);
extern void v25 (unsigned short, signed short, unsigned int);
extern void (*v26) (unsigned short, signed short, unsigned int);
extern signed short v27 (unsigned short, signed char, signed char, unsigned char);
extern signed short (*v28) (unsigned short, signed char, signed char, unsigned char);
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v76 = 0;
signed char v75 = 2;
signed char v74 = -1;

signed short v29 (void)
{
{
for (;;) {
unsigned int v79 = 6U;
signed int v78 = 2;
unsigned short v77 = 7;
trace++;
switch (trace)
{
case 2: 
return 1;
case 4: 
return -2;
case 6: 
return -2;
default: abort ();
}
}
}
}

signed char v17 (signed short v80, signed char v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = -2;
unsigned short v83 = 7;
unsigned int v82 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned char v85, unsigned char v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 1;
signed short v88 = -3;
unsigned char v87 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed short v90, signed int v91, signed char v92, unsigned int v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 7;
unsigned char v95 = 0;
signed char v94 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
