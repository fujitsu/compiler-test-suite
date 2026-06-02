#include <stdlib.h>
unsigned char v1 (signed char, signed int);
unsigned char (*v2) (signed char, signed int) = v1;
extern unsigned char v3 (signed char, unsigned int, signed short, signed int);
extern unsigned char (*v4) (signed char, unsigned int, signed short, signed int);
signed int v5 (unsigned char, unsigned short, signed char, signed int);
signed int (*v6) (unsigned char, unsigned short, signed char, signed int) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (signed int);
extern unsigned int (*v10) (signed int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned char v13 (unsigned char, signed int);
extern unsigned char (*v14) (unsigned char, signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern void v17 (unsigned char, unsigned char, unsigned short, signed int);
extern void (*v18) (unsigned char, unsigned char, unsigned short, signed int);
signed char v19 (signed int, unsigned char, unsigned char, unsigned short);
signed char (*v20) (signed int, unsigned char, unsigned char, unsigned short) = v19;
extern unsigned char v21 (unsigned char, signed int, signed short);
extern unsigned char (*v22) (unsigned char, signed int, signed short);
extern signed char v23 (signed int, signed char, unsigned char);
extern signed char (*v24) (signed int, signed char, unsigned char);
signed char v25 (unsigned int, unsigned int);
signed char (*v26) (unsigned int, unsigned int) = v25;
extern signed int v27 (unsigned short, signed short);
extern signed int (*v28) (unsigned short, signed short);
extern signed char v29 (unsigned int);
extern signed char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v93 = 6;
unsigned short v92 = 0;
unsigned short v91 = 7;

signed char v25 (unsigned int v94, unsigned int v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = -4;
signed char v97 = -3;
signed char v96 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed int v99, unsigned char v100, unsigned char v101, unsigned short v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = 0;
signed char v104 = 1;
unsigned int v103 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned char v106, unsigned short v107, signed char v108, signed int v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed int v112 = 3;
signed short v111 = -4;
signed int v110 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed char v113, signed int v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = -4;
unsigned short v116 = 6;
signed char v115 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v118;
signed int v119;
signed short v120;
unsigned char v121;
v118 = 6 + 3;
v119 = v117 + v114;
v120 = -3 + 3;
v121 = v21 (v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
