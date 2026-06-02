#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned short, unsigned int, unsigned int);
extern unsigned short (*v2) (signed short, unsigned short, unsigned int, unsigned int);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern unsigned short v5 (unsigned short);
extern unsigned short (*v6) (unsigned short);
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
extern unsigned int v11 (unsigned char, unsigned char, unsigned char);
extern unsigned int (*v12) (unsigned char, unsigned char, unsigned char);
extern void v13 (unsigned char, signed char, unsigned int);
extern void (*v14) (unsigned char, signed char, unsigned int);
extern void v15 (unsigned int, signed short, signed int, signed char);
extern void (*v16) (unsigned int, signed short, signed int, signed char);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern unsigned char v21 (signed int, signed int, signed char);
extern unsigned char (*v22) (signed int, signed int, signed char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed int (*v26) (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed short v27 (unsigned int, signed short, signed int);
extern signed short (*v28) (unsigned int, signed short, signed int);
unsigned char v29 (unsigned char, signed int, unsigned int);
unsigned char (*v30) (unsigned char, signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v88 = 1U;
signed char v87 = -3;
signed short v86 = 1;

unsigned char v29 (unsigned char v89, signed int v90, unsigned int v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = 3;
unsigned char v93 = 7;
signed char v92 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
unsigned short v97 = 7;
signed short v96 = -4;
unsigned char v95 = 7;
trace++;
switch (trace)
{
case 4: 
return 5;
default: abort ();
}
}
}
}
