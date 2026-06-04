#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned int, signed short);
extern unsigned int (*v2) (signed short, unsigned int, signed short);
extern void v3 (unsigned char, signed int);
extern void (*v4) (unsigned char, signed int);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
signed short v7 (unsigned char, signed short, unsigned char, unsigned int);
signed short (*v8) (unsigned char, signed short, unsigned char, unsigned int) = v7;
signed int v9 (unsigned int, unsigned int, unsigned int, unsigned char);
signed int (*v10) (unsigned int, unsigned int, unsigned int, unsigned char) = v9;
extern signed short v11 (signed short, signed short);
extern signed short (*v12) (signed short, signed short);
extern unsigned int v13 (signed short, unsigned int, unsigned short);
extern unsigned int (*v14) (signed short, unsigned int, unsigned short);
void v15 (unsigned short, signed short, unsigned int, unsigned short);
void (*v16) (unsigned short, signed short, unsigned int, unsigned short) = v15;
extern unsigned char v17 (unsigned int, unsigned int, unsigned char);
extern unsigned char (*v18) (unsigned int, unsigned int, unsigned char);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern void v21 (signed short, signed short, unsigned short, signed int);
extern void (*v22) (signed short, signed short, unsigned short, signed int);
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
signed int v25 (void);
signed int (*v26) (void) = v25;
signed int v27 (unsigned char, signed short);
signed int (*v28) (unsigned char, signed short) = v27;
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v73 = -3;
signed char v72 = -3;
signed short v71 = 2;

signed int v27 (unsigned char v74, signed short v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = 0;
unsigned int v77 = 6U;
signed char v76 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
signed short v81 = -2;
unsigned int v80 = 4U;
unsigned char v79 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned short v82, signed short v83, unsigned int v84, unsigned short v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = -2;
signed char v87 = -2;
unsigned int v86 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned int v89, unsigned int v90, unsigned int v91, unsigned char v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = -1;
unsigned int v94 = 0U;
unsigned int v93 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned char v96, signed short v97, unsigned char v98, unsigned int v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 5;
unsigned short v101 = 0;
unsigned int v100 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
