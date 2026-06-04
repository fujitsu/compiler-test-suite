#include <stdlib.h>
extern void v1 (unsigned char, signed char);
extern void (*v2) (unsigned char, signed char);
extern unsigned short v3 (signed char, unsigned short, unsigned short);
extern unsigned short (*v4) (signed char, unsigned short, unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern signed int v9 (signed int);
extern signed int (*v10) (signed int);
extern unsigned short v11 (signed short, signed char, signed short, unsigned char);
extern unsigned short (*v12) (signed short, signed char, signed short, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
void v17 (signed int, unsigned short, signed int, signed short);
void (*v18) (signed int, unsigned short, signed int, signed short) = v17;
signed int v19 (unsigned char, signed short);
signed int (*v20) (unsigned char, signed short) = v19;
extern unsigned char v21 (unsigned char, unsigned int);
extern unsigned char (*v22) (unsigned char, unsigned int);
extern unsigned int v25 (unsigned short, unsigned char);
extern unsigned int (*v26) (unsigned short, unsigned char);
unsigned int v27 (signed int, unsigned short, signed short, signed short);
unsigned int (*v28) (signed int, unsigned short, signed short, signed short) = v27;
extern signed int v29 (signed int, unsigned char, unsigned char, signed short);
extern signed int (*v30) (signed int, unsigned char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v87 = -3;
signed short v86 = 0;
signed int v85 = 2;

unsigned int v27 (signed int v88, unsigned short v89, signed short v90, signed short v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 5U;
signed int v93 = 2;
unsigned char v92 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned char v95, signed short v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = 1;
signed short v98 = -4;
signed short v97 = -3;
trace++;
switch (trace)
{
case 6: 
return 3;
default: abort ();
}
}
}
}

void v17 (signed int v100, unsigned short v101, signed int v102, signed short v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned short v106 = 5;
signed char v105 = 1;
signed char v104 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
