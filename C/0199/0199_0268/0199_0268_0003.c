#include <stdlib.h>
extern signed short v1 (signed int, unsigned short, signed char, unsigned short);
extern signed short (*v2) (signed int, unsigned short, signed char, unsigned short);
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern unsigned int v5 (unsigned char, unsigned short, unsigned char);
extern unsigned int (*v6) (unsigned char, unsigned short, unsigned char);
extern signed short v7 (signed short, signed char);
extern signed short (*v8) (signed short, signed char);
signed char v9 (signed short, unsigned short, signed int, unsigned int);
signed char (*v10) (signed short, unsigned short, signed int, unsigned int) = v9;
extern signed char v11 (unsigned char);
extern signed char (*v12) (unsigned char);
extern signed int v13 (signed char, signed short, signed char);
extern signed int (*v14) (signed char, signed short, signed char);
extern unsigned char v15 (unsigned int, unsigned int, signed int, signed short);
extern unsigned char (*v16) (unsigned int, unsigned int, signed int, signed short);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern signed char v25 (unsigned int, unsigned short);
extern signed char (*v26) (unsigned int, unsigned short);
static unsigned int v27 (signed char, signed int, signed int);
static unsigned int (*v28) (signed char, signed int, signed int) = v27;
extern unsigned int v29 (signed short);
extern unsigned int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v98 = 3;
signed int v97 = 0;
signed int v96 = 1;

static unsigned int v27 (signed char v99, signed int v100, signed int v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned int v104 = 5U;
unsigned short v103 = 0;
signed short v102 = -3;
trace++;
switch (trace)
{
case 9: 
return 3U;
case 11: 
return v104;
default: abort ();
}
}
}
}

signed char v9 (signed short v105, unsigned short v106, signed int v107, unsigned int v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 3;
unsigned short v110 = 0;
signed short v109 = -1;
trace++;
switch (trace)
{
case 8: 
{
signed char v112;
signed int v113;
signed int v114;
unsigned int v115;
v112 = 3 - 3;
v113 = v107 + -1;
v114 = v107 - 2;
v115 = v27 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 10: 
{
signed char v116;
signed int v117;
signed int v118;
unsigned int v119;
v116 = -4 + 3;
v117 = -2 - 0;
v118 = v107 - v107;
v119 = v27 (v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}
