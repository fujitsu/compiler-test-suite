#include <stdlib.h>
signed short v1 (unsigned short);
signed short (*v2) (unsigned short) = v1;
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
extern void v5 (unsigned int, signed short, signed short, unsigned short);
extern void (*v6) (unsigned int, signed short, signed short, unsigned short);
unsigned int v7 (unsigned short, signed int);
unsigned int (*v8) (unsigned short, signed int) = v7;
extern signed short v9 (unsigned int, unsigned int, unsigned char, signed short);
extern signed short (*v10) (unsigned int, unsigned int, unsigned char, signed short);
unsigned int v11 (unsigned short, unsigned int);
unsigned int (*v12) (unsigned short, unsigned int) = v11;
signed short v13 (signed int, unsigned int, signed char, unsigned short);
signed short (*v14) (signed int, unsigned int, signed char, unsigned short) = v13;
extern signed short v15 (signed short, signed int, unsigned int, signed short);
extern signed short (*v16) (signed short, signed int, unsigned int, signed short);
extern unsigned char v17 (unsigned short, signed int, unsigned short, signed short);
extern unsigned char (*v18) (unsigned short, signed int, unsigned short, signed short);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned int v21 (signed short, unsigned char);
extern unsigned int (*v22) (signed short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned char v25 (unsigned short, signed char, unsigned char);
extern unsigned char (*v26) (unsigned short, signed char, unsigned char);
unsigned char v27 (unsigned int, signed short, signed short, unsigned int);
unsigned char (*v28) (unsigned int, signed short, signed short, unsigned int) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v71 = 3;
signed int v70 = 3;
signed char v69 = -3;

unsigned char v27 (unsigned int v72, signed short v73, signed short v74, unsigned int v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = 1;
unsigned short v77 = 4;
unsigned short v76 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed int v79, unsigned int v80, signed char v81, unsigned short v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 6;
signed int v84 = -3;
signed int v83 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v86, unsigned int v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = -2;
unsigned int v89 = 5U;
signed int v88 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v91, signed int v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = 3;
signed short v94 = -3;
unsigned short v93 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned short v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned int v99 = 7U;
unsigned char v98 = 2;
unsigned char v97 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed char v100;
v100 = v29 ();
history[history_index++] = (int)v100;
}
break;
case 2: 
{
unsigned int v101;
signed short v102;
signed short v103;
unsigned short v104;
v101 = 5U - 4U;
v102 = 2 - -2;
v103 = 0 + -2;
v104 = v96 + 3;
v5 (v101, v102, v103, v104);
}
break;
case 4: 
{
signed short v105;
signed int v106;
unsigned int v107;
signed short v108;
signed short v109;
v105 = -3 + 1;
v106 = 3 - 3;
v107 = v99 + v99;
v108 = -4 + -4;
v109 = v15 (v105, v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 6: 
{
signed char v110;
v110 = v29 ();
history[history_index++] = (int)v110;
}
break;
case 8: 
{
unsigned int v111;
unsigned int v112;
unsigned char v113;
signed short v114;
signed short v115;
v111 = 3U + 7U;
v112 = 6U - 5U;
v113 = v98 - 7;
v114 = -2 + 1;
v115 = v9 (v111, v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 10: 
{
signed char v116;
v116 = v29 ();
history[history_index++] = (int)v116;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
