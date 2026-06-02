#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed short v3 (signed int);
extern signed short (*v4) (signed int);
extern signed char v5 (unsigned int, unsigned short, signed char);
extern signed char (*v6) (unsigned int, unsigned short, signed char);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed int v9 (signed short, signed int, unsigned char);
extern signed int (*v10) (signed short, signed int, unsigned char);
extern signed short v11 (unsigned short, signed char, signed int);
extern signed short (*v12) (unsigned short, signed char, signed int);
void v13 (void);
void (*v14) (void) = v13;
extern signed int v15 (unsigned int, signed char, unsigned char);
extern signed int (*v16) (unsigned int, signed char, unsigned char);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (signed int, unsigned char, unsigned int, unsigned char);
extern unsigned char (*v20) (signed int, unsigned char, unsigned int, unsigned char);
extern signed short v21 (void);
extern signed short (*v22) (void);
unsigned int v23 (signed short, unsigned char, unsigned short, signed int);
unsigned int (*v24) (signed short, unsigned char, unsigned short, signed int) = v23;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern void v27 (signed int);
extern void (*v28) (signed int);
void v29 (signed char);
void (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v83 = 0;
signed int v82 = 0;
signed char v81 = 2;

void v29 (signed char v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
unsigned char v87 = 7;
signed int v86 = -4;
signed char v85 = 2;
trace++;
switch (trace)
{
case 2: 
return;
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

unsigned int v23 (signed short v88, unsigned char v89, unsigned short v90, signed int v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 2;
unsigned char v93 = 1;
signed char v92 = -3;
trace++;
switch (trace)
{
case 5: 
return 1U;
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
unsigned char v97 = 1;
unsigned short v96 = 3;
signed short v95 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
