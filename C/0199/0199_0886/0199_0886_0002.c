#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned char, unsigned char, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned char, unsigned char, unsigned short);
extern signed char v3 (unsigned int, signed char, signed char);
extern signed char (*v4) (unsigned int, signed char, signed char);
unsigned int v7 (unsigned short, signed int, signed short, unsigned char);
unsigned int (*v8) (unsigned short, signed int, signed short, unsigned char) = v7;
extern unsigned int v9 (unsigned char, signed char, signed char);
extern unsigned int (*v10) (unsigned char, signed char, signed char);
extern void v11 (void);
extern void (*v12) (void);
signed int v13 (signed char, unsigned int, signed char);
signed int (*v14) (signed char, unsigned int, signed char) = v13;
signed short v15 (unsigned int, unsigned int, unsigned int, unsigned short);
signed short (*v16) (unsigned int, unsigned int, unsigned int, unsigned short) = v15;
extern void v17 (signed short, unsigned char);
extern void (*v18) (signed short, unsigned char);
extern unsigned char v19 (unsigned short);
extern unsigned char (*v20) (unsigned short);
extern unsigned int v21 (signed int, unsigned char, unsigned short, signed int);
extern unsigned int (*v22) (signed int, unsigned char, unsigned short, signed int);
unsigned char v23 (unsigned int);
unsigned char (*v24) (unsigned int) = v23;
extern signed short v25 (signed int, signed char, signed short, signed short);
extern signed short (*v26) (signed int, signed char, signed short, signed short);
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern signed int v29 (unsigned int, unsigned int);
extern signed int (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v84 = -1;
unsigned char v83 = 7;
signed char v82 = -2;

unsigned char v23 (unsigned int v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = 1;
unsigned char v87 = 0;
unsigned int v86 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned int v89, unsigned int v90, unsigned int v91, unsigned short v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned short v95 = 7;
signed int v94 = 2;
signed int v93 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed char v96, unsigned int v97, signed char v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed int v101 = 2;
signed short v100 = 0;
signed char v99 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v102, signed int v103, signed short v104, unsigned char v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = -4;
signed short v107 = -2;
signed char v106 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
