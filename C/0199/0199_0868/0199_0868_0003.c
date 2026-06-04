#include <stdlib.h>
signed short v1 (signed char);
signed short (*v2) (signed char) = v1;
unsigned short v5 (signed char, signed short, unsigned char);
unsigned short (*v6) (signed char, signed short, unsigned char) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed int v9 (unsigned int, signed int, unsigned int);
extern signed int (*v10) (unsigned int, signed int, unsigned int);
extern unsigned short v11 (unsigned char, unsigned int);
extern unsigned short (*v12) (unsigned char, unsigned int);
extern signed int v13 (unsigned short, unsigned char, signed short);
extern signed int (*v14) (unsigned short, unsigned char, signed short);
extern unsigned short v15 (unsigned short, unsigned char, unsigned short, signed int);
extern unsigned short (*v16) (unsigned short, unsigned char, unsigned short, signed int);
extern unsigned int v17 (unsigned short, signed short, unsigned char, unsigned char);
extern unsigned int (*v18) (unsigned short, signed short, unsigned char, unsigned char);
unsigned char v19 (unsigned short, unsigned short, unsigned char, unsigned char);
unsigned char (*v20) (unsigned short, unsigned short, unsigned char, unsigned char) = v19;
extern unsigned short v21 (unsigned char, signed short, signed int);
extern unsigned short (*v22) (unsigned char, signed short, signed int);
void v23 (void);
void (*v24) (void) = v23;
extern unsigned short v25 (signed short, signed int, unsigned int);
extern unsigned short (*v26) (signed short, signed int, unsigned int);
extern unsigned int v27 (signed short, signed char, unsigned int);
extern unsigned int (*v28) (signed short, signed char, unsigned int);
extern void v29 (unsigned char, signed int, unsigned int);
extern void (*v30) (unsigned char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v102 = 0;
signed short v101 = 2;
signed int v100 = -3;

void v23 (void)
{
{
for (;;) {
unsigned int v105 = 2U;
signed short v104 = -1;
signed short v103 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned short v106, unsigned short v107, unsigned char v108, unsigned char v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 4U;
unsigned short v111 = 4;
signed char v110 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed char v113, signed short v114, unsigned char v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = 3;
unsigned short v117 = 1;
signed short v116 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed char v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = 0;
unsigned int v121 = 0U;
unsigned int v120 = 4U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v123;
signed int v124;
unsigned int v125;
signed int v126;
v123 = v121 + 2U;
v124 = 2 - 3;
v125 = v121 + v121;
v126 = v9 (v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 20: 
return -2;
default: abort ();
}
}
}
}
