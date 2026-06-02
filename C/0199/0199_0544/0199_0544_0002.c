#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned char, unsigned char, unsigned int);
extern unsigned short (*v2) (signed int, unsigned char, unsigned char, unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned int v7 (signed int, signed short, signed char);
unsigned int (*v8) (signed int, signed short, signed char) = v7;
extern unsigned char v9 (unsigned short, unsigned int);
extern unsigned char (*v10) (unsigned short, unsigned int);
unsigned short v13 (unsigned int, unsigned int);
unsigned short (*v14) (unsigned int, unsigned int) = v13;
extern signed short v15 (unsigned char, signed int, unsigned short);
extern signed short (*v16) (unsigned char, signed int, unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
signed char v19 (unsigned int, unsigned short);
signed char (*v20) (unsigned int, unsigned short) = v19;
extern unsigned short v21 (unsigned short, unsigned short);
extern unsigned short (*v22) (unsigned short, unsigned short);
static unsigned char v23 (signed char, unsigned int, signed int, signed int);
static unsigned char (*v24) (signed char, unsigned int, signed int, signed int) = v23;
extern signed char v25 (unsigned char, signed char, signed short, signed char);
extern signed char (*v26) (unsigned char, signed char, signed short, signed char);
extern signed short v27 (unsigned short, signed int);
extern signed short (*v28) (unsigned short, signed int);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v73 = 3U;
signed char v72 = -3;
signed short v71 = 2;

static unsigned char v23 (signed char v74, unsigned int v75, signed int v76, signed int v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed char v80 = -1;
signed char v79 = 1;
unsigned char v78 = 5;
trace++;
switch (trace)
{
case 2: 
return 0;
case 4: 
return 7;
case 6: 
return v78;
default: abort ();
}
}
}
}

signed char v19 (unsigned int v81, unsigned short v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 0;
unsigned char v84 = 0;
unsigned short v83 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v86;
unsigned int v87;
signed int v88;
signed int v89;
unsigned char v90;
v86 = 3 + -2;
v87 = 4U + v81;
v88 = -2 + -3;
v89 = 2 - 0;
v90 = v23 (v86, v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 3: 
{
signed char v91;
unsigned int v92;
signed int v93;
signed int v94;
unsigned char v95;
v91 = 3 + 1;
v92 = 3U - v81;
v93 = -1 - -4;
v94 = 2 - 2;
v95 = v23 (v91, v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 5: 
{
signed char v96;
unsigned int v97;
signed int v98;
signed int v99;
unsigned char v100;
v96 = -1 + -2;
v97 = 2U - v81;
v98 = 3 - 0;
v99 = 2 + -2;
v100 = v23 (v96, v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 7: 
return -3;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned int v101, unsigned int v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed int v105 = -2;
signed short v104 = -2;
unsigned short v103 = 6;
trace++;
switch (trace)
{
case 11: 
return v103;
default: abort ();
}
}
}
}

unsigned int v7 (signed int v106, signed short v107, signed char v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned char v111 = 1;
unsigned char v110 = 5;
signed short v109 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
