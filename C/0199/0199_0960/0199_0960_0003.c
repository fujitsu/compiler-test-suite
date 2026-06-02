#include <stdlib.h>
extern void v1 (signed int, signed char);
extern void (*v2) (signed int, signed char);
void v3 (void);
void (*v4) (void) = v3;
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern unsigned int v11 (signed short);
extern unsigned int (*v12) (signed short);
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
extern signed char v17 (void);
extern signed char (*v18) (void);
signed int v19 (unsigned int, unsigned int, unsigned int);
signed int (*v20) (unsigned int, unsigned int, unsigned int) = v19;
signed short v21 (signed char, signed char, unsigned int, unsigned int);
signed short (*v22) (signed char, signed char, unsigned int, unsigned int) = v21;
extern void v23 (signed short);
extern void (*v24) (signed short);
extern unsigned int v25 (signed int, signed char, unsigned short, unsigned short);
extern unsigned int (*v26) (signed int, signed char, unsigned short, unsigned short);
signed int v27 (signed short);
signed int (*v28) (signed short) = v27;
extern signed int v29 (signed int, unsigned char, unsigned short, unsigned int);
extern signed int (*v30) (signed int, unsigned char, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v82 = -4;
unsigned short v81 = 5;
signed char v80 = -1;

signed int v27 (signed short v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -1;
unsigned char v85 = 4;
unsigned int v84 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed char v87, signed char v88, unsigned int v89, unsigned int v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = -1;
unsigned int v92 = 0U;
unsigned short v91 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned int v94, unsigned int v95, unsigned int v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = -2;
signed char v98 = 0;
unsigned short v97 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
signed char v102 = -1;
signed char v101 = 1;
unsigned char v100 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
unsigned char v105 = 5;
unsigned int v104 = 7U;
signed int v103 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
