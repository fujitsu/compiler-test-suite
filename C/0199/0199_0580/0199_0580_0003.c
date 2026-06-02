#include <stdlib.h>
unsigned char v1 (signed char, signed short, signed short, signed int);
unsigned char (*v2) (signed char, signed short, signed short, signed int) = v1;
extern signed int v3 (signed char, signed int, unsigned short, unsigned short);
extern signed int (*v4) (signed char, signed int, unsigned short, unsigned short);
extern signed char v5 (signed short, signed short, unsigned int);
extern signed char (*v6) (signed short, signed short, unsigned int);
extern signed char v7 (unsigned int, unsigned int, unsigned int);
extern signed char (*v8) (unsigned int, unsigned int, unsigned int);
extern void v9 (signed int);
extern void (*v10) (signed int);
signed short v11 (signed short, unsigned int, unsigned int, signed int);
signed short (*v12) (signed short, unsigned int, unsigned int, signed int) = v11;
extern signed char v13 (unsigned short, signed int);
extern signed char (*v14) (unsigned short, signed int);
extern signed int v15 (signed int, unsigned short, unsigned short);
extern signed int (*v16) (signed int, unsigned short, unsigned short);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
signed char v21 (void);
signed char (*v22) (void) = v21;
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern unsigned short v25 (signed char, signed char, unsigned short);
extern unsigned short (*v26) (signed char, signed char, unsigned short);
signed int v27 (unsigned char);
signed int (*v28) (unsigned char) = v27;
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v91 = 1;
unsigned short v90 = 1;
unsigned short v89 = 4;

signed int v27 (unsigned char v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = -3;
signed int v94 = 3;
unsigned short v93 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (void)
{
{
for (;;) {
unsigned short v98 = 4;
signed char v97 = 1;
unsigned char v96 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed short v99, unsigned int v100, unsigned int v101, signed int v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = 3;
signed char v104 = -4;
signed short v103 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed char v106, signed short v107, signed short v108, signed int v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 2;
unsigned short v111 = 7;
unsigned int v110 = 3U;
trace++;
switch (trace)
{
case 0: 
{
signed short v113;
signed short v114;
unsigned int v115;
signed char v116;
v113 = v107 - 0;
v114 = v108 + -3;
v115 = 4U - 4U;
v116 = v5 (v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
