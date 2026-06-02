#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed short, unsigned char);
extern void (*v4) (signed short, unsigned char);
extern void v5 (signed short, unsigned short, unsigned char, signed char);
extern void (*v6) (signed short, unsigned short, unsigned char, signed char);
unsigned short v7 (signed char, unsigned char, unsigned int, signed char);
unsigned short (*v8) (signed char, unsigned char, unsigned int, signed char) = v7;
extern unsigned char v9 (unsigned char, unsigned int, unsigned char, unsigned int);
extern unsigned char (*v10) (unsigned char, unsigned int, unsigned char, unsigned int);
extern signed char v11 (unsigned short, signed int);
extern signed char (*v12) (unsigned short, signed int);
extern signed int v13 (signed short, signed int);
extern signed int (*v14) (signed short, signed int);
extern unsigned short v15 (unsigned short, signed char);
extern unsigned short (*v16) (unsigned short, signed char);
extern unsigned short v17 (unsigned char);
extern unsigned short (*v18) (unsigned char);
extern void v19 (void);
extern void (*v20) (void);
signed int v21 (unsigned char, unsigned short, signed short);
signed int (*v22) (unsigned char, unsigned short, signed short) = v21;
extern unsigned int v23 (signed int, unsigned short);
extern unsigned int (*v24) (signed int, unsigned short);
void v25 (unsigned int, signed short);
void (*v26) (unsigned int, signed short) = v25;
extern unsigned short v27 (signed char, unsigned short, unsigned short, unsigned int);
extern unsigned short (*v28) (signed char, unsigned short, unsigned short, unsigned int);
unsigned char v29 (signed short, signed int);
unsigned char (*v30) (signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v88 = 1U;
unsigned short v87 = 1;
signed short v86 = -2;

unsigned char v29 (signed short v89, signed int v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = 1;
unsigned int v92 = 4U;
unsigned char v91 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (unsigned int v94, signed short v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed short v98 = 3;
signed int v97 = 0;
unsigned char v96 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned char v99, unsigned short v100, signed short v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 7;
unsigned int v103 = 1U;
unsigned short v102 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed char v105, unsigned char v106, unsigned int v107, signed char v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned char v111 = 4;
unsigned char v110 = 2;
unsigned char v109 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
