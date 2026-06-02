#include <stdlib.h>
extern signed char v3 (signed short, signed char);
extern signed char (*v4) (signed short, signed char);
extern unsigned int v5 (unsigned int, signed char, signed short, signed short);
extern unsigned int (*v6) (unsigned int, signed char, signed short, signed short);
extern unsigned short v7 (unsigned int, unsigned short, unsigned char, unsigned char);
extern unsigned short (*v8) (unsigned int, unsigned short, unsigned char, unsigned char);
extern void v9 (void);
extern void (*v10) (void);
unsigned short v11 (signed short, signed short, signed short, unsigned short);
unsigned short (*v12) (signed short, signed short, signed short, unsigned short) = v11;
extern signed int v13 (signed char, unsigned int, unsigned char);
extern signed int (*v14) (signed char, unsigned int, unsigned char);
extern unsigned short v15 (signed int);
extern unsigned short (*v16) (signed int);
extern signed int v19 (signed short, unsigned short);
extern signed int (*v20) (signed short, unsigned short);
extern unsigned char v21 (unsigned int, signed short, signed char);
extern unsigned char (*v22) (unsigned int, signed short, signed char);
signed char v23 (signed int, unsigned int, unsigned int, unsigned short);
signed char (*v24) (signed int, unsigned int, unsigned int, unsigned short) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed char v27 (signed short, unsigned short, unsigned short, unsigned short);
extern signed char (*v28) (signed short, unsigned short, unsigned short, unsigned short);
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v79 = 2;
signed short v78 = -3;
signed char v77 = -3;

signed short v29 (void)
{
{
for (;;) {
signed char v82 = 0;
signed char v81 = 2;
signed short v80 = 3;
trace++;
switch (trace)
{
case 2: 
return -2;
case 10: 
return v80;
default: abort ();
}
}
}
}

signed char v23 (signed int v83, unsigned int v84, unsigned int v85, unsigned short v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 0;
signed char v88 = -4;
unsigned char v87 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed short v90, signed short v91, signed short v92, unsigned short v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 2;
unsigned short v95 = 5;
unsigned int v94 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
