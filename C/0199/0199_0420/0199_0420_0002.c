#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned int);
extern unsigned int (*v2) (signed char, unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned char v7 (signed char);
extern unsigned char (*v8) (signed char);
extern unsigned short v9 (unsigned short, unsigned short, unsigned int);
extern unsigned short (*v10) (unsigned short, unsigned short, unsigned int);
void v11 (unsigned char, signed short);
void (*v12) (unsigned char, signed short) = v11;
extern void v13 (signed short, signed int, signed short);
extern void (*v14) (signed short, signed int, signed short);
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
extern signed short v19 (unsigned short, unsigned char, unsigned short);
extern signed short (*v20) (unsigned short, unsigned char, unsigned short);
extern unsigned int v21 (signed char, unsigned short, unsigned int);
extern unsigned int (*v22) (signed char, unsigned short, unsigned int);
extern unsigned int v23 (signed char, unsigned short, unsigned char, signed int);
extern unsigned int (*v24) (signed char, unsigned short, unsigned char, signed int);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
signed short v27 (signed int, unsigned char, unsigned int, signed char);
signed short (*v28) (signed int, unsigned char, unsigned int, signed char) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v86 = 2U;
unsigned char v85 = 7;
signed int v84 = -4;

signed short v27 (signed int v87, unsigned char v88, unsigned int v89, signed char v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 5U;
signed char v92 = 0;
unsigned char v91 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned char v94, signed short v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 1;
unsigned short v97 = 6;
signed short v96 = 0;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}
