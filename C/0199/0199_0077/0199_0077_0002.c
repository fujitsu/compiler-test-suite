#include <stdlib.h>
extern unsigned int v1 (unsigned int);
extern unsigned int (*v2) (unsigned int);
extern void v3 (unsigned int, signed int, unsigned char, signed char);
extern void (*v4) (unsigned int, signed int, unsigned char, signed char);
extern signed int v5 (unsigned short, unsigned char, unsigned int, signed char);
extern signed int (*v6) (unsigned short, unsigned char, unsigned int, signed char);
extern unsigned short v7 (unsigned short, signed char);
extern unsigned short (*v8) (unsigned short, signed char);
extern signed int v9 (unsigned char, unsigned short, unsigned char, signed char);
extern signed int (*v10) (unsigned char, unsigned short, unsigned char, signed char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
unsigned char v13 (signed short, unsigned int, signed int, signed int);
unsigned char (*v14) (signed short, unsigned int, signed int, signed int) = v13;
void v15 (void);
void (*v16) (void) = v15;
signed int v17 (signed char);
signed int (*v18) (signed char) = v17;
unsigned int v19 (signed int, signed short);
unsigned int (*v20) (signed int, signed short) = v19;
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern void v23 (unsigned short, signed short, unsigned char, unsigned char);
extern void (*v24) (unsigned short, signed short, unsigned char, unsigned char);
extern signed short v25 (unsigned int, signed short, unsigned short, unsigned short);
extern signed short (*v26) (unsigned int, signed short, unsigned short, unsigned short);
signed short v27 (unsigned short);
signed short (*v28) (unsigned short) = v27;
unsigned int v29 (signed int, unsigned short, signed short, unsigned short);
unsigned int (*v30) (signed int, unsigned short, signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v83 = 7;
signed char v82 = 2;
unsigned char v81 = 7;

unsigned int v29 (signed int v84, unsigned short v85, signed short v86, unsigned short v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = -3;
unsigned int v89 = 6U;
unsigned char v88 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v27 (unsigned short v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 4U;
unsigned short v93 = 3;
unsigned char v92 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed int v95, signed short v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 5;
signed int v98 = 3;
signed short v97 = 3;
trace++;
switch (trace)
{
case 9: 
return 3U;
default: abort ();
}
}
}
}

signed int v17 (signed char v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = -4;
signed int v102 = 3;
signed int v101 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
signed int v106 = -1;
unsigned short v105 = 6;
signed char v104 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed short v107, unsigned int v108, signed int v109, signed int v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = -2;
unsigned char v112 = 7;
signed int v111 = 3;
trace++;
switch (trace)
{
case 3: 
{
signed short v114;
unsigned char v115;
v114 = -2 + v107;
v115 = v21 (v114);
history[history_index++] = (int)v115;
}
break;
case 5: 
return v112;
default: abort ();
}
}
}
}
