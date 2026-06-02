#include <stdlib.h>
unsigned char v1 (unsigned int, unsigned char, signed int);
unsigned char (*v2) (unsigned int, unsigned char, signed int) = v1;
extern unsigned short v3 (signed short, unsigned char);
extern unsigned short (*v4) (signed short, unsigned char);
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
extern signed char v7 (signed int, unsigned int);
extern signed char (*v8) (signed int, unsigned int);
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned int v13 (unsigned char, unsigned short, unsigned short);
extern unsigned int (*v14) (unsigned char, unsigned short, unsigned short);
signed int v15 (unsigned char, signed char);
signed int (*v16) (unsigned char, signed char) = v15;
void v17 (unsigned short, signed short);
void (*v18) (unsigned short, signed short) = v17;
extern signed short v19 (signed short, unsigned short, unsigned int);
extern signed short (*v20) (signed short, unsigned short, unsigned int);
signed char v21 (unsigned short, signed short);
signed char (*v22) (unsigned short, signed short) = v21;
unsigned int v23 (signed char, signed int, signed char);
unsigned int (*v24) (signed char, signed int, signed char) = v23;
extern unsigned short v25 (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v84 = -4;
unsigned short v83 = 5;
unsigned char v82 = 7;

unsigned int v23 (signed char v85, signed int v86, signed char v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned int v90 = 0U;
unsigned char v89 = 5;
signed char v88 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned short v91, signed short v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = -1;
unsigned short v94 = 7;
unsigned char v93 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned short v96, signed short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = 1;
signed char v99 = 3;
unsigned int v98 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned char v101, signed char v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 5;
unsigned short v104 = 3;
unsigned char v103 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v106, unsigned char v107, signed int v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = 2;
unsigned short v110 = 6;
unsigned short v109 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v112;
unsigned short v113;
unsigned int v114;
signed short v115;
v112 = -3 - 0;
v113 = v109 - 5;
v114 = 0U + v106;
v115 = v19 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 16: 
return 3;
default: abort ();
}
}
}
}
