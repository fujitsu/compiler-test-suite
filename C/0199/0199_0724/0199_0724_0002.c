#include <stdlib.h>
unsigned char v3 (unsigned char);
unsigned char (*v4) (unsigned char) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
signed int v7 (void);
signed int (*v8) (void) = v7;
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern void v13 (unsigned short, unsigned int, unsigned int);
extern void (*v14) (unsigned short, unsigned int, unsigned int);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (unsigned char, signed char, signed char);
extern void (*v20) (unsigned char, signed char, signed char);
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern signed short v23 (unsigned int);
extern signed short (*v24) (unsigned int);
extern signed char v27 (unsigned int, unsigned short, unsigned short, signed char);
extern signed char (*v28) (unsigned int, unsigned short, unsigned short, signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v79 = 2;
unsigned char v78 = 0;
unsigned int v77 = 0U;

unsigned int v21 (void)
{
{
for (;;) {
unsigned char v82 = 7;
unsigned int v81 = 1U;
signed char v80 = -4;
trace++;
switch (trace)
{
case 1: 
return 1U;
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
signed int v85 = 1;
unsigned char v84 = 5;
unsigned short v83 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 3U;
unsigned int v88 = 1U;
unsigned short v87 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
