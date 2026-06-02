#include <stdlib.h>
unsigned char v1 (unsigned short, unsigned short, unsigned int, unsigned short);
unsigned char (*v2) (unsigned short, unsigned short, unsigned int, unsigned short) = v1;
extern signed char v3 (unsigned int, signed short, unsigned short, unsigned short);
extern signed char (*v4) (unsigned int, signed short, unsigned short, unsigned short);
signed char v5 (unsigned int);
signed char (*v6) (unsigned int) = v5;
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern unsigned char v9 (unsigned int, unsigned short, unsigned int, unsigned int);
extern unsigned char (*v10) (unsigned int, unsigned short, unsigned int, unsigned int);
static unsigned char v11 (unsigned int, signed char, unsigned char, unsigned short);
static unsigned char (*v12) (unsigned int, signed char, unsigned char, unsigned short) = v11;
extern signed int v13 (unsigned short, signed int);
extern signed int (*v14) (unsigned short, signed int);
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
extern void v17 (signed short);
extern void (*v18) (signed short);
extern signed int v19 (signed int, unsigned int);
extern signed int (*v20) (signed int, unsigned int);
extern unsigned char v21 (signed char, signed short, signed short);
extern unsigned char (*v22) (signed char, signed short, signed short);
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v88 = 3U;
signed short v87 = 1;
unsigned int v86 = 4U;

static unsigned char v11 (unsigned int v89, signed char v90, unsigned char v91, unsigned short v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed char v95 = 2;
signed int v94 = 1;
signed int v93 = 1;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v96;
signed short v97;
v96 = 1 + 1;
v97 = v27 (v96);
history[history_index++] = (int)v97;
}
break;
case 7: 
{
signed short v98;
v98 = 0 + -2;
v17 (v98);
}
break;
case 11: 
return v91;
default: abort ();
}
}
}
}

signed char v5 (unsigned int v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 0U;
unsigned int v101 = 1U;
signed short v100 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v103, unsigned short v104, unsigned int v105, unsigned short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 5;
unsigned short v108 = 7;
signed short v107 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v110;
signed int v111;
signed int v112;
v110 = v103 + v104;
v111 = -2 - -4;
v112 = v13 (v110, v111);
history[history_index++] = (int)v112;
}
break;
case 2: 
{
signed char v113;
signed short v114;
signed short v115;
unsigned char v116;
v113 = -1 - -3;
v114 = -4 + v107;
v115 = 1 - 0;
v116 = v21 (v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 4: 
{
unsigned int v117;
signed char v118;
unsigned char v119;
unsigned short v120;
unsigned char v121;
v117 = v105 - v105;
v118 = -2 + 3;
v119 = v109 - v109;
v120 = v108 - v108;
v121 = v11 (v117, v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 12: 
return v109;
default: abort ();
}
}
}
}
