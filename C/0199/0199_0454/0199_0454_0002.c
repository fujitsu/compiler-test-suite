#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern unsigned char v3 (unsigned char, signed short);
extern unsigned char (*v4) (unsigned char, signed short);
signed short v5 (signed int, signed short, signed char, signed short);
signed short (*v6) (signed int, signed short, signed char, signed short) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned char v11 (signed int);
unsigned char (*v12) (signed int) = v11;
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned short v15 (unsigned short, signed int);
extern unsigned short (*v16) (unsigned short, signed int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (unsigned short, signed int, signed char, signed char);
extern void (*v20) (unsigned short, signed int, signed char, signed char);
extern signed short v21 (signed char, unsigned int, signed short, unsigned short);
extern signed short (*v22) (signed char, unsigned int, signed short, unsigned short);
extern signed short v23 (signed short, signed short);
extern signed short (*v24) (signed short, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (unsigned char, unsigned int);
extern void (*v28) (unsigned char, unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v86 = 0;
signed int v85 = -2;
signed int v84 = 3;

unsigned char v11 (signed int v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 7;
unsigned int v89 = 4U;
unsigned int v88 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed int v91, signed short v92, signed char v93, signed short v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 3;
signed int v96 = 3;
unsigned int v95 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
unsigned short v100 = 5;
signed int v99 = -1;
unsigned short v98 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed short v101;
v101 = v7 ();
history[history_index++] = (int)v101;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
