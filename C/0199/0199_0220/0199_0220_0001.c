#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short, unsigned char, signed int);
extern unsigned int (*v2) (unsigned short, signed short, unsigned char, signed int);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
signed short v5 (unsigned int);
signed short (*v6) (unsigned int) = v5;
signed char v7 (signed char, signed int);
signed char (*v8) (signed char, signed int) = v7;
extern unsigned int v9 (unsigned short, signed short, unsigned int);
extern unsigned int (*v10) (unsigned short, signed short, unsigned int);
void v11 (signed char);
void (*v12) (signed char) = v11;
signed char v13 (signed char);
signed char (*v14) (signed char) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
signed short v17 (unsigned int, unsigned char, unsigned char);
signed short (*v18) (unsigned int, unsigned char, unsigned char) = v17;
extern signed short v19 (signed char, unsigned int, unsigned short, signed short);
extern signed short (*v20) (signed char, unsigned int, unsigned short, signed short);
extern signed int v21 (signed int, signed int, signed short);
extern signed int (*v22) (signed int, signed int, signed short);
extern void v23 (unsigned short, signed short, signed char);
extern void (*v24) (unsigned short, signed short, signed char);
signed short v25 (unsigned char, unsigned short, signed short, unsigned char);
signed short (*v26) (unsigned char, unsigned short, signed short, unsigned char) = v25;
extern unsigned int v27 (signed int, unsigned short, signed char, unsigned char);
extern unsigned int (*v28) (signed int, unsigned short, signed char, unsigned char);
extern void v29 (signed short, unsigned char);
extern void (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v64 = 1;
unsigned int v63 = 1U;
unsigned short v62 = 4;

signed short v25 (unsigned char v65, unsigned short v66, signed short v67, unsigned char v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 3;
unsigned char v70 = 5;
signed short v69 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned int v72, unsigned char v73, unsigned char v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = -3;
unsigned short v76 = 5;
unsigned int v75 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed char v78)
{
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 6;
unsigned int v80 = 5U;
unsigned int v79 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed char v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 5;
signed char v84 = -3;
unsigned short v83 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed char v86, signed int v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned int v90 = 6U;
signed char v89 = -3;
unsigned short v88 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned int v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = 2;
unsigned short v93 = 3;
unsigned short v92 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
