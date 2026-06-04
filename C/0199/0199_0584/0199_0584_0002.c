#include <stdlib.h>
extern signed short v1 (signed char, unsigned char, signed short, signed int);
extern signed short (*v2) (signed char, unsigned char, signed short, signed int);
extern void v3 (unsigned char, signed int, unsigned int);
extern void (*v4) (unsigned char, signed int, unsigned int);
extern void v5 (unsigned short, signed char);
extern void (*v6) (unsigned short, signed char);
extern signed int v7 (signed char);
extern signed int (*v8) (signed char);
extern unsigned short v9 (signed char, unsigned int);
extern unsigned short (*v10) (signed char, unsigned int);
extern unsigned int v11 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned int, signed char, unsigned int);
void v13 (unsigned char, signed char, signed short);
void (*v14) (unsigned char, signed char, signed short) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned char v19 (unsigned short, signed short);
extern unsigned char (*v20) (unsigned short, signed short);
extern signed short v21 (signed char);
extern signed short (*v22) (signed char);
unsigned short v23 (unsigned short, signed int, signed int, signed short);
unsigned short (*v24) (unsigned short, signed int, signed int, signed short) = v23;
extern void v25 (signed int, signed short, unsigned short, unsigned int);
extern void (*v26) (signed int, signed short, unsigned short, unsigned int);
extern void v27 (void);
extern void (*v28) (void);
unsigned char v29 (signed short);
unsigned char (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v87 = 1;
unsigned char v86 = 6;
unsigned short v85 = 1;

unsigned char v29 (signed short v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 7;
unsigned char v90 = 0;
unsigned int v89 = 2U;
trace++;
switch (trace)
{
case 11: 
return v90;
default: abort ();
}
}
}
}

unsigned short v23 (unsigned short v92, signed int v93, signed int v94, signed short v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 2;
signed char v97 = -4;
unsigned short v96 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned char v99, signed char v100, signed short v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 5;
signed short v103 = 3;
unsigned int v102 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
