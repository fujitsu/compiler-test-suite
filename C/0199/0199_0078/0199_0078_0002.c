#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
unsigned char v3 (unsigned char, signed int, signed short, signed char);
unsigned char (*v4) (unsigned char, signed int, signed short, signed char) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned char v7 (unsigned int);
unsigned char (*v8) (unsigned int) = v7;
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed int v13 (unsigned char, unsigned short, unsigned char, unsigned int);
extern signed int (*v14) (unsigned char, unsigned short, unsigned char, unsigned int);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern void v17 (signed short, signed short, signed char);
extern void (*v18) (signed short, signed short, signed char);
extern signed char v19 (signed short, signed int, signed char);
extern signed char (*v20) (signed short, signed int, signed char);
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
extern signed short v23 (unsigned short, signed char, signed short);
extern signed short (*v24) (unsigned short, signed char, signed short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (unsigned short, signed char, unsigned short);
extern void (*v28) (unsigned short, signed char, unsigned short);
extern signed int v29 (unsigned short);
extern signed int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v85 = 7;
signed short v84 = 0;
signed short v83 = 0;

unsigned char v7 (unsigned int v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = -3;
unsigned char v88 = 7;
unsigned char v87 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v90, signed int v91, signed short v92, signed char v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned char v96 = 6;
signed short v95 = -1;
signed short v94 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
signed short v99 = -2;
unsigned int v98 = 5U;
signed char v97 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v100;
v100 = v25 ();
history[history_index++] = (int)v100;
}
break;
case 12: 
return 0U;
default: abort ();
}
}
}
}
