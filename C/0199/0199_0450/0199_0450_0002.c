#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern unsigned char v3 (signed int, unsigned int);
extern unsigned char (*v4) (signed int, unsigned int);
signed int v5 (unsigned char, unsigned char, signed short, unsigned char);
signed int (*v6) (unsigned char, unsigned char, signed short, unsigned char) = v5;
extern unsigned int v7 (unsigned short, signed char, signed short);
extern unsigned int (*v8) (unsigned short, signed char, signed short);
extern unsigned char v9 (signed short, unsigned int);
extern unsigned char (*v10) (signed short, unsigned int);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern void v15 (signed int, unsigned char);
extern void (*v16) (signed int, unsigned char);
signed int v17 (unsigned short, signed char, signed short);
signed int (*v18) (unsigned short, signed char, signed short) = v17;
void v21 (void);
void (*v22) (void) = v21;
extern unsigned int v23 (unsigned char, unsigned char, signed short, signed int);
extern unsigned int (*v24) (unsigned char, unsigned char, signed short, signed int);
extern signed short v25 (signed short, signed short);
extern signed short (*v26) (signed short, signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed short v29 (unsigned char, signed short, unsigned char, unsigned short);
extern signed short (*v30) (unsigned char, signed short, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v97 = 1;
signed int v96 = -2;
unsigned char v95 = 7;

void v21 (void)
{
{
for (;;) {
signed char v100 = 3;
unsigned char v99 = 6;
unsigned char v98 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned short v101, signed char v102, signed short v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned short v106 = 1;
unsigned char v105 = 0;
signed int v104 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned char v107, unsigned char v108, signed short v109, unsigned char v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned char v113 = 5;
unsigned short v112 = 6;
signed char v111 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
unsigned char v116 = 6;
unsigned short v115 = 0;
signed char v114 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v117;
signed short v118;
unsigned char v119;
unsigned short v120;
signed short v121;
v117 = v116 + 4;
v118 = -3 + -2;
v119 = v116 - 4;
v120 = 5 + v115;
v121 = v29 (v117, v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 2: 
{
signed int v122;
unsigned int v123;
unsigned char v124;
v122 = -4 + 0;
v123 = 7U + 7U;
v124 = v3 (v122, v123);
history[history_index++] = (int)v124;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
