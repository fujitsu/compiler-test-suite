#include <stdlib.h>
extern void v1 (signed int, unsigned char, signed short);
extern void (*v2) (signed int, unsigned char, signed short);
extern unsigned int v3 (unsigned short, signed char);
extern unsigned int (*v4) (unsigned short, signed char);
extern signed int v5 (signed char, signed int);
extern signed int (*v6) (signed char, signed int);
extern void v7 (unsigned int);
extern void (*v8) (unsigned int);
extern signed char v9 (signed char, unsigned int, unsigned char);
extern signed char (*v10) (signed char, unsigned int, unsigned char);
extern unsigned char v11 (signed char, unsigned char);
extern unsigned char (*v12) (signed char, unsigned char);
extern signed char v13 (signed char, signed char);
extern signed char (*v14) (signed char, signed char);
extern unsigned short v17 (unsigned char, signed int, signed int, signed short);
extern unsigned short (*v18) (unsigned char, signed int, signed int, signed short);
extern unsigned int v19 (unsigned short, signed int, unsigned char, signed char);
extern unsigned int (*v20) (unsigned short, signed int, unsigned char, signed char);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
unsigned short v23 (signed short);
unsigned short (*v24) (signed short) = v23;
unsigned int v25 (signed short, unsigned short);
unsigned int (*v26) (signed short, unsigned short) = v25;
extern signed int v27 (signed short, signed int, signed short, signed char);
extern signed int (*v28) (signed short, signed int, signed short, signed char);
extern unsigned char v29 (unsigned char, unsigned short, unsigned short, signed int);
extern unsigned char (*v30) (unsigned char, unsigned short, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v77 = -1;
unsigned char v76 = 4;
signed short v75 = -2;

unsigned int v25 (signed short v78, unsigned short v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned char v82 = 0;
unsigned short v81 = 0;
unsigned short v80 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (signed short v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 6;
unsigned short v85 = 2;
signed char v84 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
signed char v89 = 3;
unsigned int v88 = 5U;
unsigned int v87 = 7U;
trace++;
switch (trace)
{
case 9: 
return 1;
case 11: 
return 0;
default: abort ();
}
}
}
}
