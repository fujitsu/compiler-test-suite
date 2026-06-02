#include <stdlib.h>
extern signed short v1 (signed short, unsigned short, signed char);
extern signed short (*v2) (signed short, unsigned short, signed char);
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
unsigned int v5 (unsigned char, unsigned char, unsigned int);
unsigned int (*v6) (unsigned char, unsigned char, unsigned int) = v5;
extern signed short v7 (signed int, unsigned short);
extern signed short (*v8) (signed int, unsigned short);
extern unsigned char v11 (signed int, signed char, signed int, unsigned char);
extern unsigned char (*v12) (signed int, signed char, signed int, unsigned char);
unsigned int v13 (unsigned short, signed short, signed int, unsigned short);
unsigned int (*v14) (unsigned short, signed short, signed int, unsigned short) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
signed int v17 (signed short, signed short);
signed int (*v18) (signed short, signed short) = v17;
unsigned short v19 (unsigned char, signed int, signed int, signed char);
unsigned short (*v20) (unsigned char, signed int, signed int, signed char) = v19;
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern signed char v23 (signed int);
extern signed char (*v24) (signed int);
extern unsigned char v25 (signed short);
extern unsigned char (*v26) (signed short);
void v27 (unsigned short);
void (*v28) (unsigned short) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v82 = 0;
signed char v81 = 3;
unsigned char v80 = 2;

void v27 (unsigned short v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 0;
unsigned char v85 = 2;
signed short v84 = -2;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

unsigned short v19 (unsigned char v87, signed int v88, signed int v89, signed char v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = -2;
signed char v92 = -3;
signed char v91 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed short v94, signed short v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed short v98 = 3;
unsigned char v97 = 4;
unsigned int v96 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned short v99, signed short v100, signed int v101, unsigned short v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 2U;
signed short v104 = -3;
unsigned char v103 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v106, unsigned char v107, unsigned int v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = 2;
signed int v110 = 0;
unsigned short v109 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
