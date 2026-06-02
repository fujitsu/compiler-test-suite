#include <stdlib.h>
extern signed int v1 (unsigned short);
extern signed int (*v2) (unsigned short);
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
unsigned char v5 (unsigned int, unsigned char);
unsigned char (*v6) (unsigned int, unsigned char) = v5;
extern unsigned int v7 (unsigned int, unsigned char);
extern unsigned int (*v8) (unsigned int, unsigned char);
extern signed short v9 (unsigned short, unsigned int);
extern signed short (*v10) (unsigned short, unsigned int);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
signed char v13 (unsigned char, signed char, unsigned int);
signed char (*v14) (unsigned char, signed char, unsigned int) = v13;
extern signed char v15 (unsigned short, unsigned int, unsigned int, signed short);
extern signed char (*v16) (unsigned short, unsigned int, unsigned int, signed short);
extern void v17 (signed int);
extern void (*v18) (signed int);
unsigned int v19 (signed char);
unsigned int (*v20) (signed char) = v19;
unsigned char v21 (unsigned int, unsigned int, signed char, unsigned int);
unsigned char (*v22) (unsigned int, unsigned int, signed char, unsigned int) = v21;
extern unsigned short v25 (signed int, unsigned int);
extern unsigned short (*v26) (signed int, unsigned int);
extern signed int v27 (unsigned short, signed char, unsigned int, unsigned char);
extern signed int (*v28) (unsigned short, signed char, unsigned int, unsigned char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v90 = 1;
signed int v89 = -2;
signed short v88 = -1;

unsigned char v21 (unsigned int v91, unsigned int v92, signed char v93, unsigned int v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = -1;
unsigned short v96 = 2;
signed short v95 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v98;
signed char v99;
unsigned int v100;
unsigned char v101;
signed int v102;
v98 = v96 + v96;
v99 = v93 - v93;
v100 = 5U - v94;
v101 = 5 - 1;
v102 = v27 (v98, v99, v100, v101);
history[history_index++] = (int)v102;
}
break;
case 3: 
return 6;
default: abort ();
}
}
}
}

unsigned int v19 (signed char v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = -1;
unsigned short v105 = 2;
unsigned int v104 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned char v107, signed char v108, unsigned int v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 4U;
unsigned short v111 = 5;
unsigned short v110 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
unsigned int v115 = 1U;
unsigned short v114 = 0;
unsigned char v113 = 3;
trace++;
switch (trace)
{
case 5: 
return 1U;
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v116, unsigned char v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 7;
unsigned int v119 = 5U;
unsigned short v118 = 0;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v121;
unsigned int v122;
signed short v123;
v121 = 0 - v120;
v122 = 3U + v119;
v123 = v9 (v121, v122);
history[history_index++] = (int)v123;
}
break;
case 9: 
return v117;
default: abort ();
}
}
}
}
