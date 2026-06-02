#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (unsigned char, unsigned char, unsigned short);
extern signed short (*v4) (unsigned char, unsigned char, unsigned short);
extern signed char v5 (signed short, signed short);
extern signed char (*v6) (signed short, signed short);
void v7 (signed int, unsigned int, signed char, unsigned short);
void (*v8) (signed int, unsigned int, signed char, unsigned short) = v7;
signed short v9 (unsigned int, unsigned char);
signed short (*v10) (unsigned int, unsigned char) = v9;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
unsigned short v13 (signed short, signed char);
unsigned short (*v14) (signed short, signed char) = v13;
extern unsigned short v15 (unsigned int);
extern unsigned short (*v16) (unsigned int);
extern signed int v17 (unsigned char, unsigned int, unsigned short);
extern signed int (*v18) (unsigned char, unsigned int, unsigned short);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern signed int v21 (unsigned short, signed short);
extern signed int (*v22) (unsigned short, signed short);
extern void v23 (signed char, unsigned char, unsigned short);
extern void (*v24) (signed char, unsigned char, unsigned short);
unsigned short v25 (signed char, unsigned int);
unsigned short (*v26) (signed char, unsigned int) = v25;
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v95 = 6;
signed short v94 = -2;
unsigned short v93 = 6;

unsigned int v27 (void)
{
{
for (;;) {
unsigned int v98 = 7U;
unsigned short v97 = 2;
signed char v96 = 2;
trace++;
switch (trace)
{
case 7: 
return v98;
default: abort ();
}
}
}
}

unsigned short v25 (signed char v99, unsigned int v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = -2;
unsigned int v102 = 0U;
signed int v101 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
unsigned char v106 = 1;
signed short v105 = 0;
signed short v104 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed short v107, signed char v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = 0;
signed int v110 = 1;
unsigned char v109 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned int v112, unsigned char v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -2;
unsigned char v115 = 3;
signed short v114 = -2;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v117;
unsigned int v118;
unsigned short v119;
signed int v120;
v117 = 3 + v115;
v118 = 1U - v112;
v119 = 4 + 0;
v120 = v17 (v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 9: 
return -3;
default: abort ();
}
}
}
}

void v7 (signed int v121, unsigned int v122, signed char v123, unsigned short v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = 0;
unsigned short v126 = 3;
signed int v125 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
