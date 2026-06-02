#include <stdlib.h>
void v1 (signed int);
void (*v2) (signed int) = v1;
extern unsigned short v3 (signed short, unsigned char, signed int);
extern unsigned short (*v4) (signed short, unsigned char, signed int);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern signed short v9 (signed char, unsigned char);
extern signed short (*v10) (signed char, unsigned char);
extern unsigned char v11 (unsigned short, signed short, signed char);
extern unsigned char (*v12) (unsigned short, signed short, signed char);
extern signed char v13 (unsigned short);
extern signed char (*v14) (unsigned short);
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
extern void v17 (void);
extern void (*v18) (void);
static signed int v19 (unsigned short, signed int, unsigned char);
static signed int (*v20) (unsigned short, signed int, unsigned char) = v19;
extern unsigned short v21 (signed short, unsigned int);
extern unsigned short (*v22) (signed short, unsigned int);
static signed short v23 (signed char, unsigned char, signed short, unsigned int);
static signed short (*v24) (signed char, unsigned char, signed short, unsigned int) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed short v27 (unsigned short, signed short, signed short);
extern signed short (*v28) (unsigned short, signed short, signed short);
extern unsigned char v29 (unsigned short);
extern unsigned char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v86 = 0;
unsigned short v85 = 0;
signed short v84 = 1;

static signed short v23 (signed char v87, unsigned char v88, signed short v89, unsigned int v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 7;
signed int v92 = -2;
unsigned char v91 = 1;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v94;
signed short v95;
signed short v96;
signed short v97;
v94 = v93 + v93;
v95 = -1 + v89;
v96 = -1 - v89;
v97 = v27 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 9: 
{
unsigned short v98;
signed short v99;
signed short v100;
signed short v101;
v98 = 4 - v93;
v99 = v89 + v89;
v100 = 3 + v89;
v101 = v27 (v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

static signed int v19 (unsigned short v102, signed int v103, unsigned char v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned int v107 = 4U;
signed int v106 = 1;
unsigned char v105 = 2;
trace++;
switch (trace)
{
case 6: 
{
signed char v108;
unsigned char v109;
signed short v110;
unsigned int v111;
signed short v112;
v108 = 2 + 2;
v109 = v105 - v105;
v110 = -4 + -3;
v111 = v107 - v107;
v112 = v23 (v108, v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 12: 
return v103;
default: abort ();
}
}
}
}

void v1 (signed int v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
signed int v116 = 2;
unsigned int v115 = 1U;
unsigned int v114 = 4U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v117;
signed char v118;
v117 = 7 - 0;
v118 = v13 (v117);
history[history_index++] = (int)v118;
}
break;
case 2: 
{
unsigned short v119;
signed char v120;
v119 = 3 - 4;
v120 = v13 (v119);
history[history_index++] = (int)v120;
}
break;
case 4: 
return;
case 5: 
{
unsigned short v121;
signed int v122;
unsigned char v123;
signed int v124;
v121 = 2 + 1;
v122 = v116 + v116;
v123 = 7 - 5;
v124 = v19 (v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
