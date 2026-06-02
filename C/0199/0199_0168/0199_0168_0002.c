#include <stdlib.h>
extern signed char v1 (signed short, signed char, signed int);
extern signed char (*v2) (signed short, signed char, signed int);
extern signed short v3 (unsigned char, signed char, signed short);
extern signed short (*v4) (unsigned char, signed char, signed short);
extern unsigned short v5 (unsigned int, signed char, signed short, unsigned short);
extern unsigned short (*v6) (unsigned int, signed char, signed short, unsigned short);
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
extern unsigned int v9 (signed char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char);
extern signed int v11 (unsigned int, unsigned char, unsigned int);
extern signed int (*v12) (unsigned int, unsigned char, unsigned int);
signed int v13 (unsigned char);
signed int (*v14) (unsigned char) = v13;
extern signed char v15 (signed short, signed char, signed short, unsigned int);
extern signed char (*v16) (signed short, signed char, signed short, unsigned int);
extern void v17 (unsigned char, signed char);
extern void (*v18) (unsigned char, signed char);
extern unsigned short v19 (unsigned char, signed short, unsigned short);
extern unsigned short (*v20) (unsigned char, signed short, unsigned short);
extern signed short v21 (signed int, unsigned int, signed char);
extern signed short (*v22) (signed int, unsigned int, signed char);
static void v23 (signed char, unsigned char, unsigned short);
static void (*v24) (signed char, unsigned char, unsigned short) = v23;
extern unsigned int v25 (signed short, unsigned short);
extern unsigned int (*v26) (signed short, unsigned short);
extern void v27 (signed int, unsigned int, signed char, signed char);
extern void (*v28) (signed int, unsigned int, signed char, signed char);
extern void v29 (signed int, unsigned char, unsigned char, unsigned char);
extern void (*v30) (signed int, unsigned char, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v93 = 1U;
unsigned char v92 = 4;
signed char v91 = 1;

static void v23 (signed char v94, unsigned char v95, unsigned short v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 6;
signed short v98 = 1;
signed short v97 = -1;
trace++;
switch (trace)
{
case 2: 
return;
case 6: 
{
signed short v100;
unsigned short v101;
unsigned int v102;
v100 = v98 - v97;
v101 = 4 - 4;
v102 = v25 (v100, v101);
history[history_index++] = (int)v102;
}
break;
case 8: 
return;
default: abort ();
}
}
}
}

signed int v13 (unsigned char v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
unsigned short v106 = 4;
unsigned char v105 = 0;
signed short v104 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v107;
unsigned char v108;
unsigned short v109;
v107 = -3 - 0;
v108 = v105 - v103;
v109 = v106 + v106;
v23 (v107, v108, v109);
}
break;
case 3: 
{
signed short v110;
unsigned short v111;
unsigned int v112;
v110 = -4 - v104;
v111 = 1 - v106;
v112 = v25 (v110, v111);
history[history_index++] = (int)v112;
}
break;
case 5: 
{
signed char v113;
unsigned char v114;
unsigned short v115;
v113 = 2 + -4;
v114 = v103 + v105;
v115 = v106 - 6;
v23 (v113, v114, v115);
}
break;
case 9: 
{
signed short v116;
unsigned short v117;
unsigned int v118;
v116 = v104 + 0;
v117 = v106 + 3;
v118 = v25 (v116, v117);
history[history_index++] = (int)v118;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}
