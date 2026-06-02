#include <stdlib.h>
void v1 (unsigned char, unsigned char, unsigned int, signed char);
void (*v2) (unsigned char, unsigned char, unsigned int, signed char) = v1;
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
extern signed short v5 (void);
extern signed short (*v6) (void);
unsigned char v7 (signed short, signed int);
unsigned char (*v8) (signed short, signed int) = v7;
signed char v9 (signed short, unsigned char, unsigned char);
signed char (*v10) (signed short, unsigned char, unsigned char) = v9;
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
signed char v13 (unsigned int);
signed char (*v14) (unsigned int) = v13;
extern void v15 (void);
extern void (*v16) (void);
unsigned int v17 (signed char);
unsigned int (*v18) (signed char) = v17;
extern unsigned int v19 (unsigned int);
extern unsigned int (*v20) (unsigned int);
extern unsigned char v21 (unsigned int, unsigned char, unsigned int, unsigned char);
extern unsigned char (*v22) (unsigned int, unsigned char, unsigned int, unsigned char);
extern signed int v23 (unsigned short);
extern signed int (*v24) (unsigned short);
extern void v25 (unsigned short, unsigned int, signed char, signed int);
extern void (*v26) (unsigned short, unsigned int, signed char, signed int);
extern unsigned int v27 (unsigned int, signed int, signed char);
extern unsigned int (*v28) (unsigned int, signed int, signed char);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v92 = 1;
unsigned short v91 = 5;
signed char v90 = 1;

unsigned int v17 (signed char v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 7;
unsigned short v95 = 3;
signed int v94 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned int v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 5;
unsigned short v99 = 5;
unsigned int v98 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed short v101, unsigned char v102, unsigned char v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = 2;
unsigned short v105 = 7;
signed int v104 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed short v107, signed int v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = 2;
unsigned short v110 = 6;
signed short v109 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned char v112, unsigned char v113, unsigned int v114, signed char v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 0;
unsigned short v117 = 3;
signed char v116 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v119;
v119 = 7 - 0;
v29 (v119);
}
break;
case 2: 
{
unsigned int v120;
signed int v121;
signed char v122;
unsigned int v123;
v120 = v114 - 6U;
v121 = -3 - -1;
v122 = 0 + v115;
v123 = v27 (v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
