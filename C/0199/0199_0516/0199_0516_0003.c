#include <stdlib.h>
extern signed short v1 (signed int, signed int);
extern signed short (*v2) (signed int, signed int);
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (signed short, signed char, signed char, signed char);
extern void (*v6) (signed short, signed char, signed char, signed char);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern signed char v11 (signed char, unsigned char);
extern signed char (*v12) (signed char, unsigned char);
unsigned int v13 (unsigned char);
unsigned int (*v14) (unsigned char) = v13;
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
unsigned int v17 (unsigned char, signed char);
unsigned int (*v18) (unsigned char, signed char) = v17;
signed short v19 (signed short, signed char, unsigned short);
signed short (*v20) (signed short, signed char, unsigned short) = v19;
unsigned int v21 (signed char, signed short);
unsigned int (*v22) (signed char, signed short) = v21;
extern unsigned int v23 (unsigned char, unsigned int, signed char, unsigned short);
extern unsigned int (*v24) (unsigned char, unsigned int, signed char, unsigned short);
signed short v25 (signed int, unsigned int);
signed short (*v26) (signed int, unsigned int) = v25;
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
unsigned char v29 (unsigned char, unsigned char, signed short);
unsigned char (*v30) (unsigned char, unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v90 = 1;
unsigned char v89 = 4;
signed int v88 = -2;

unsigned char v29 (unsigned char v91, unsigned char v92, signed short v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned char v96 = 3;
unsigned short v95 = 1;
signed int v94 = -4;
trace++;
switch (trace)
{
case 9: 
return v91;
default: abort ();
}
}
}
}

signed short v25 (signed int v97, unsigned int v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed int v101 = -1;
signed int v100 = 1;
unsigned short v99 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed char v102, signed short v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = 1;
signed char v105 = -1;
signed int v104 = -3;
trace++;
switch (trace)
{
case 4: 
return 7U;
default: abort ();
}
}
}
}

signed short v19 (signed short v107, signed char v108, unsigned short v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = -3;
unsigned char v111 = 0;
signed short v110 = 2;
trace++;
switch (trace)
{
case 1: 
return v107;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned char v113, signed char v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned int v117 = 5U;
unsigned short v116 = 1;
unsigned char v115 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 4;
unsigned char v120 = 5;
unsigned char v119 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
