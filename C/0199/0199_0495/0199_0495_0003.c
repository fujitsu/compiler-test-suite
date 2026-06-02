#include <stdlib.h>
extern void v1 (signed char, signed short);
extern void (*v2) (signed char, signed short);
unsigned char v3 (unsigned short, signed char);
unsigned char (*v4) (unsigned short, signed char) = v3;
extern unsigned char v5 (unsigned char, signed short);
extern unsigned char (*v6) (unsigned char, signed short);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
unsigned short v9 (signed int, unsigned short, signed int);
unsigned short (*v10) (signed int, unsigned short, signed int) = v9;
unsigned char v11 (unsigned short, signed char);
unsigned char (*v12) (unsigned short, signed char) = v11;
extern signed short v13 (unsigned char, signed int, signed int);
extern signed short (*v14) (unsigned char, signed int, signed int);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern void v21 (unsigned short);
extern void (*v22) (unsigned short);
extern unsigned char v23 (signed int, unsigned char, signed int);
extern unsigned char (*v24) (signed int, unsigned char, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned char v29 (signed char, signed short);
extern unsigned char (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v90 = -1;
unsigned short v89 = 1;
unsigned char v88 = 4;

signed char v15 (void)
{
{
for (;;) {
signed short v93 = -2;
unsigned short v92 = 2;
signed int v91 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v94, signed char v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 1U;
unsigned short v97 = 2;
unsigned char v96 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v99, unsigned short v100, signed int v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed char v104 = 3;
signed int v103 = -4;
unsigned char v102 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned short v105, signed char v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = 3;
unsigned char v108 = 6;
unsigned short v107 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
