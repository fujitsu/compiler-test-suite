#include <stdlib.h>
extern unsigned int v1 (unsigned int);
extern unsigned int (*v2) (unsigned int);
unsigned short v3 (unsigned short, unsigned short);
unsigned short (*v4) (unsigned short, unsigned short) = v3;
extern signed char v5 (signed char, signed int);
extern signed char (*v6) (signed char, signed int);
extern void v7 (signed short, signed short, unsigned int, unsigned char);
extern void (*v8) (signed short, signed short, unsigned int, unsigned char);
unsigned short v9 (unsigned int, unsigned char, unsigned int);
unsigned short (*v10) (unsigned int, unsigned char, unsigned int) = v9;
extern void v11 (signed short);
extern void (*v12) (signed short);
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern void v15 (signed int, unsigned int);
extern void (*v16) (signed int, unsigned int);
extern unsigned short v17 (signed short, unsigned int, unsigned char);
extern unsigned short (*v18) (signed short, unsigned int, unsigned char);
signed char v19 (void);
signed char (*v20) (void) = v19;
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
signed int v27 (unsigned int);
signed int (*v28) (unsigned int) = v27;
unsigned int v29 (unsigned char, signed char);
unsigned int (*v30) (unsigned char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v82 = 6U;
unsigned int v81 = 3U;
signed char v80 = 2;

unsigned int v29 (unsigned char v83, signed char v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 1U;
signed char v86 = 1;
signed char v85 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (unsigned int v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
signed int v91 = -3;
unsigned int v90 = 3U;
signed char v89 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (void)
{
{
for (;;) {
signed char v94 = -4;
unsigned int v93 = 3U;
signed char v92 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned int v95, unsigned char v96, unsigned int v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 7U;
signed short v99 = 1;
signed char v98 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v101, unsigned short v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned short v105 = 1;
unsigned char v104 = 1;
signed int v103 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
