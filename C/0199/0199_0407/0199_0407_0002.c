#include <stdlib.h>
signed char v3 (unsigned int, unsigned int);
signed char (*v4) (unsigned int, unsigned int) = v3;
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
unsigned char v9 (unsigned short, unsigned short);
unsigned char (*v10) (unsigned short, unsigned short) = v9;
extern unsigned int v11 (signed char, unsigned short);
extern unsigned int (*v12) (signed char, unsigned short);
extern signed char v13 (unsigned short, unsigned int);
extern signed char (*v14) (unsigned short, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned char v17 (signed short, unsigned char, signed int, signed char);
extern unsigned char (*v18) (signed short, unsigned char, signed int, signed char);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed int v21 (unsigned char, unsigned int, signed int, unsigned int);
extern signed int (*v22) (unsigned char, unsigned int, signed int, unsigned int);
extern signed short v23 (signed char, unsigned char, unsigned char, unsigned char);
extern signed short (*v24) (signed char, unsigned char, unsigned char, unsigned char);
extern signed char v25 (signed int, signed int, signed short);
extern signed char (*v26) (signed int, signed int, signed short);
extern unsigned int v27 (signed short);
extern unsigned int (*v28) (signed short);
extern unsigned int v29 (unsigned char, unsigned int, unsigned char, signed int);
extern unsigned int (*v30) (unsigned char, unsigned int, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v85 = 3;
signed char v84 = 1;
unsigned short v83 = 6;

unsigned char v19 (void)
{
{
for (;;) {
unsigned char v88 = 3;
signed int v87 = -3;
unsigned int v86 = 0U;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned short v89, unsigned short v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 1;
signed int v92 = 1;
unsigned short v91 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v94, unsigned int v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = 2;
signed short v97 = -3;
signed char v96 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
