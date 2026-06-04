#include <stdlib.h>
unsigned char v1 (unsigned short, signed char, unsigned short);
unsigned char (*v2) (unsigned short, signed char, unsigned short) = v1;
signed short v3 (unsigned int, signed int, signed char, unsigned short);
signed short (*v4) (unsigned int, signed int, signed char, unsigned short) = v3;
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
signed int v7 (signed short, unsigned char);
signed int (*v8) (signed short, unsigned char) = v7;
extern unsigned int v9 (signed char, signed char, unsigned short);
extern unsigned int (*v10) (signed char, signed char, unsigned short);
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
extern unsigned char v13 (signed int, signed char);
extern unsigned char (*v14) (signed int, signed char);
extern signed int v15 (unsigned char, unsigned int);
extern signed int (*v16) (unsigned char, unsigned int);
extern unsigned char v17 (unsigned short, unsigned int, unsigned char, unsigned char);
extern unsigned char (*v18) (unsigned short, unsigned int, unsigned char, unsigned char);
extern unsigned char v19 (unsigned int, signed short, unsigned char, signed int);
extern unsigned char (*v20) (unsigned int, signed short, unsigned char, signed int);
extern signed int v21 (unsigned char, unsigned int, signed int);
extern signed int (*v22) (unsigned char, unsigned int, signed int);
signed int v23 (unsigned char);
signed int (*v24) (unsigned char) = v23;
extern signed int v25 (unsigned int, unsigned int);
extern signed int (*v26) (unsigned int, unsigned int);
extern void v27 (unsigned int, unsigned char, unsigned int);
extern void (*v28) (unsigned int, unsigned char, unsigned int);
extern signed int v29 (signed int);
extern signed int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v87 = -3;
signed char v86 = -3;
signed int v85 = -1;

signed int v23 (unsigned char v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
signed int v91 = 0;
unsigned int v90 = 7U;
signed short v89 = -1;
trace++;
switch (trace)
{
case 8: 
return 3;
default: abort ();
}
}
}
}

signed int v7 (signed short v92, unsigned char v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned char v96 = 1;
unsigned char v95 = 7;
signed char v94 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned int v97, signed int v98, signed char v99, unsigned short v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = -3;
unsigned int v102 = 4U;
unsigned char v101 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v104, signed char v105, unsigned short v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = -1;
unsigned char v108 = 4;
signed short v107 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v110;
unsigned int v111;
signed int v112;
signed int v113;
v110 = v108 - 7;
v111 = 1U - 2U;
v112 = 0 - 0;
v113 = v21 (v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 10: 
{
unsigned int v114;
unsigned char v115;
unsigned int v116;
v114 = 6U - 7U;
v115 = 6 + v108;
v116 = 6U + 1U;
v27 (v114, v115, v116);
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
