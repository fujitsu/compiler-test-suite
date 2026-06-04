#include <stdlib.h>
unsigned short v1 (unsigned char, signed char, unsigned char, signed short);
unsigned short (*v2) (unsigned char, signed char, unsigned char, signed short) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v9 (unsigned char, unsigned int, unsigned char, unsigned char);
extern void (*v10) (unsigned char, unsigned int, unsigned char, unsigned char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
unsigned short v13 (unsigned char, signed short, signed short);
unsigned short (*v14) (unsigned char, signed short, signed short) = v13;
unsigned int v15 (unsigned char, unsigned int, signed short);
unsigned int (*v16) (unsigned char, unsigned int, signed short) = v15;
extern signed int v17 (unsigned int, unsigned short, unsigned int, signed char);
extern signed int (*v18) (unsigned int, unsigned short, unsigned int, signed char);
extern signed int v19 (unsigned char, signed int);
extern signed int (*v20) (unsigned char, signed int);
extern unsigned short v21 (signed short, unsigned int, unsigned short, signed int);
extern unsigned short (*v22) (signed short, unsigned int, unsigned short, signed int);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed short v27 (signed char, unsigned int, unsigned char, signed char);
extern signed short (*v28) (signed char, unsigned int, unsigned char, signed char);
static unsigned short v29 (unsigned char, signed char, unsigned char, unsigned int);
static unsigned short (*v30) (unsigned char, signed char, unsigned char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v81 = 4U;
signed int v80 = -1;
signed int v79 = 3;

static unsigned short v29 (unsigned char v82, signed char v83, unsigned char v84, unsigned int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -1;
unsigned char v87 = 6;
unsigned short v86 = 7;
trace++;
switch (trace)
{
case 10: 
return v86;
default: abort ();
}
}
}
}

unsigned int v15 (unsigned char v89, unsigned int v90, signed short v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned char v94 = 7;
signed int v93 = -3;
signed char v92 = -1;
trace++;
switch (trace)
{
case 7: 
{
signed char v95;
v95 = v25 ();
history[history_index++] = (int)v95;
}
break;
case 9: 
{
unsigned char v96;
signed char v97;
unsigned char v98;
unsigned int v99;
unsigned short v100;
v96 = v89 + 0;
v97 = v92 + v92;
v98 = v89 + v89;
v99 = 3U - 2U;
v100 = v29 (v96, v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 11: 
return v90;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v101, signed short v102, signed short v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 0U;
unsigned short v105 = 7;
unsigned int v104 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned char v107, signed char v108, unsigned char v109, signed short v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned char v113 = 5;
signed char v112 = 1;
signed short v111 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v114;
signed char v115;
v114 = 1 + 5;
v115 = v112 - v112;
v5 (v114, v115);
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}
