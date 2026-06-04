#include <stdlib.h>
signed short v1 (unsigned short, unsigned short);
signed short (*v2) (unsigned short, unsigned short) = v1;
extern signed int v3 (signed char, signed char, unsigned int);
extern signed int (*v4) (signed char, signed char, unsigned int);
extern unsigned short v5 (unsigned int, signed short, signed int, unsigned int);
extern unsigned short (*v6) (unsigned int, signed short, signed int, unsigned int);
extern unsigned char v7 (signed int, signed int, signed int, signed char);
extern unsigned char (*v8) (signed int, signed int, signed int, signed char);
extern unsigned short v9 (unsigned short, signed short);
extern unsigned short (*v10) (unsigned short, signed short);
unsigned char v13 (signed short, unsigned char, unsigned char);
unsigned char (*v14) (signed short, unsigned char, unsigned char) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
unsigned int v17 (signed int, signed char, signed int, unsigned char);
unsigned int (*v18) (signed int, signed char, signed int, unsigned char) = v17;
unsigned int v19 (signed short);
unsigned int (*v20) (signed short) = v19;
extern signed char v21 (unsigned int);
extern signed char (*v22) (unsigned int);
unsigned char v23 (unsigned int, unsigned int, signed char, unsigned short);
unsigned char (*v24) (unsigned int, unsigned int, signed char, unsigned short) = v23;
extern void v25 (unsigned short, unsigned short);
extern void (*v26) (unsigned short, unsigned short);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed int v29 (unsigned short, unsigned char, unsigned char);
extern signed int (*v30) (unsigned short, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v81 = 0;
signed int v80 = 2;
signed char v79 = -3;

unsigned char v23 (unsigned int v82, unsigned int v83, signed char v84, unsigned short v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned int v88 = 5U;
unsigned short v87 = 3;
unsigned short v86 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed short v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
signed int v92 = 3;
unsigned char v91 = 2;
signed char v90 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed int v93, signed char v94, signed int v95, unsigned char v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = 0;
signed int v98 = 3;
signed char v97 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed short v100, unsigned char v101, unsigned char v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = 1;
unsigned short v104 = 2;
unsigned int v103 = 2U;
trace++;
switch (trace)
{
case 5: 
{
signed char v106;
v106 = v15 ();
history[history_index++] = (int)v106;
}
break;
case 13: 
return v102;
default: abort ();
}
}
}
}

signed short v1 (unsigned short v107, unsigned short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 4;
unsigned char v110 = 1;
unsigned char v109 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed int v112;
signed int v113;
signed int v114;
signed char v115;
unsigned char v116;
v112 = -2 - 1;
v113 = -1 - -2;
v114 = 0 - 2;
v115 = -4 - 3;
v116 = v7 (v112, v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 16: 
return -2;
default: abort ();
}
}
}
}
