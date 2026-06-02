#include <stdlib.h>
extern signed int v1 (signed short, unsigned int, unsigned char);
extern signed int (*v2) (signed short, unsigned int, unsigned char);
void v3 (signed short, unsigned int, signed char);
void (*v4) (signed short, unsigned int, signed char) = v3;
extern unsigned char v7 (signed char, signed short, unsigned int, signed char);
extern unsigned char (*v8) (signed char, signed short, unsigned int, signed char);
unsigned short v9 (signed short, unsigned int, unsigned int);
unsigned short (*v10) (signed short, unsigned int, unsigned int) = v9;
extern unsigned char v11 (unsigned int, signed int);
extern unsigned char (*v12) (unsigned int, signed int);
unsigned int v13 (signed int, signed char);
unsigned int (*v14) (signed int, signed char) = v13;
signed short v15 (void);
signed short (*v16) (void) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
signed int v19 (signed short, signed int, signed int, unsigned short);
signed int (*v20) (signed short, signed int, signed int, unsigned short) = v19;
extern unsigned int v21 (signed short, signed short);
extern unsigned int (*v22) (signed short, signed short);
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern unsigned char v25 (unsigned int);
extern unsigned char (*v26) (unsigned int);
extern unsigned int v27 (unsigned int, unsigned char);
extern unsigned int (*v28) (unsigned int, unsigned char);
extern unsigned int v29 (unsigned char, unsigned char, signed int);
extern unsigned int (*v30) (unsigned char, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v86 = 2U;
signed int v85 = 3;
signed short v84 = 2;

unsigned char v23 (void)
{
{
for (;;) {
unsigned char v89 = 1;
signed short v88 = -3;
unsigned char v87 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed short v90, signed int v91, signed int v92, unsigned short v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = -1;
signed short v95 = -2;
signed char v94 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
signed int v99 = -1;
signed char v98 = 2;
unsigned short v97 = 0;
trace++;
switch (trace)
{
case 8: 
{
signed short v100;
v100 = v17 ();
history[history_index++] = (int)v100;
}
break;
case 14: 
return 3;
default: abort ();
}
}
}
}

unsigned int v13 (signed int v101, signed char v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 4U;
unsigned short v104 = 7;
unsigned char v103 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed short v106, unsigned int v107, unsigned int v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned char v111 = 6;
unsigned char v110 = 7;
signed short v109 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed short v112, unsigned int v113, signed char v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = 3;
signed short v116 = 0;
signed int v115 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
