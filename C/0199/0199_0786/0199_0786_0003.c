#include <stdlib.h>
void v1 (signed int, unsigned char, signed short);
void (*v2) (signed int, unsigned char, signed short) = v1;
extern unsigned int v3 (unsigned short, signed char);
extern unsigned int (*v4) (unsigned short, signed char);
extern signed int v5 (signed char, signed int);
extern signed int (*v6) (signed char, signed int);
extern void v7 (unsigned int);
extern void (*v8) (unsigned int);
extern signed char v9 (signed char, unsigned int, unsigned char);
extern signed char (*v10) (signed char, unsigned int, unsigned char);
extern unsigned char v11 (signed char, unsigned char);
extern unsigned char (*v12) (signed char, unsigned char);
extern signed char v13 (signed char, signed char);
extern signed char (*v14) (signed char, signed char);
static unsigned short v15 (signed char);
static unsigned short (*v16) (signed char) = v15;
extern unsigned short v17 (unsigned char, signed int, signed int, signed short);
extern unsigned short (*v18) (unsigned char, signed int, signed int, signed short);
extern unsigned int v19 (unsigned short, signed int, unsigned char, signed char);
extern unsigned int (*v20) (unsigned short, signed int, unsigned char, signed char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned short v23 (signed short);
extern unsigned short (*v24) (signed short);
extern unsigned int v25 (signed short, unsigned short);
extern unsigned int (*v26) (signed short, unsigned short);
extern signed int v27 (signed short, signed int, signed short, signed char);
extern signed int (*v28) (signed short, signed int, signed short, signed char);
extern unsigned char v29 (unsigned char, unsigned short, unsigned short, signed int);
extern unsigned char (*v30) (unsigned char, unsigned short, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v92 = 4;
unsigned char v91 = 1;
unsigned char v90 = 6;

static unsigned short v15 (signed char v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = -2;
signed short v95 = 2;
unsigned int v94 = 2U;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v97;
signed int v98;
unsigned char v99;
signed char v100;
unsigned int v101;
v97 = 1 - 4;
v98 = -3 - 3;
v99 = 6 - 7;
v100 = v93 - v93;
v101 = v19 (v97, v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 5: 
{
signed short v102;
signed int v103;
signed short v104;
signed char v105;
signed int v106;
v102 = -4 - v96;
v103 = -1 - 1;
v104 = v95 + v96;
v105 = 0 - v93;
v106 = v27 (v102, v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 7: 
{
unsigned short v107;
signed int v108;
unsigned char v109;
signed char v110;
unsigned int v111;
v107 = 5 - 1;
v108 = 0 + 3;
v109 = 4 - 2;
v110 = v93 - 1;
v111 = v19 (v107, v108, v109, v110);
history[history_index++] = (int)v111;
}
break;
case 13: 
return 7;
default: abort ();
}
}
}
}

void v1 (signed int v112, unsigned char v113, signed short v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 0;
unsigned char v116 = 3;
unsigned short v115 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v118;
signed int v119;
signed short v120;
signed char v121;
signed int v122;
v118 = v114 - v114;
v119 = v112 - -2;
v120 = -2 + -3;
v121 = 0 + -4;
v122 = v27 (v118, v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 2: 
{
signed char v123;
unsigned short v124;
v123 = 3 + 3;
v124 = v15 (v123);
history[history_index++] = (int)v124;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
