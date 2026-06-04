#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
void v5 (signed int, signed short, signed char);
void (*v6) (signed int, signed short, signed char) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned char v9 (signed int, unsigned int);
extern unsigned char (*v10) (signed int, unsigned int);
extern signed int v11 (signed int, signed int, unsigned int);
extern signed int (*v12) (signed int, signed int, unsigned int);
extern signed char v13 (signed short, unsigned int, unsigned short);
extern signed char (*v14) (signed short, unsigned int, unsigned short);
extern unsigned int v15 (unsigned char, unsigned int, unsigned short);
extern unsigned int (*v16) (unsigned char, unsigned int, unsigned short);
extern signed short v17 (signed char, unsigned char, unsigned short, signed int);
extern signed short (*v18) (signed char, unsigned char, unsigned short, signed int);
extern void v19 (signed short, unsigned char, unsigned char, signed int);
extern void (*v20) (signed short, unsigned char, unsigned char, signed int);
extern unsigned int v21 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned int (*v22) (unsigned short, unsigned int, signed char, unsigned int);
extern void v23 (unsigned short, unsigned int, signed char, unsigned int);
extern void (*v24) (unsigned short, unsigned int, signed char, unsigned int);
signed char v25 (signed int, signed char, signed int);
signed char (*v26) (signed int, signed char, signed int) = v25;
extern unsigned short v27 (unsigned char, signed char, unsigned short, unsigned short);
extern unsigned short (*v28) (unsigned char, signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v87 = 3;
unsigned short v86 = 3;
unsigned char v85 = 7;

signed char v25 (signed int v88, signed char v89, signed int v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 4;
unsigned short v92 = 1;
signed int v91 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed int v94, signed short v95, signed char v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 6;
unsigned char v98 = 5;
unsigned int v97 = 1U;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}
