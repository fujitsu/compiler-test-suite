#include <stdlib.h>
signed short v1 (signed short, unsigned char);
signed short (*v2) (signed short, unsigned char) = v1;
extern signed short v3 (unsigned short, signed int, signed char, unsigned int);
extern signed short (*v4) (unsigned short, signed int, signed char, unsigned int);
extern signed int v5 (unsigned int, signed short, unsigned char, signed short);
extern signed int (*v6) (unsigned int, signed short, unsigned char, signed short);
extern signed short v7 (unsigned int, signed int);
extern signed short (*v8) (unsigned int, signed int);
extern signed char v9 (signed short, signed int, unsigned char, signed short);
extern signed char (*v10) (signed short, signed int, unsigned char, signed short);
extern signed short v11 (signed char, unsigned short, signed char, signed short);
extern signed short (*v12) (signed char, unsigned short, signed char, signed short);
extern signed char v13 (signed char, unsigned short, signed char, signed short);
extern signed char (*v14) (signed char, unsigned short, signed char, signed short);
extern unsigned short v15 (signed short);
extern unsigned short (*v16) (signed short);
extern unsigned int v17 (signed char, unsigned char);
extern unsigned int (*v18) (signed char, unsigned char);
extern signed char v19 (signed char, unsigned char);
extern signed char (*v20) (signed char, unsigned char);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern unsigned int v23 (signed short, unsigned char, signed char);
extern unsigned int (*v24) (signed short, unsigned char, signed char);
extern unsigned short v25 (signed char, signed short, unsigned char);
extern unsigned short (*v26) (signed char, signed short, unsigned char);
extern unsigned char v27 (signed short, signed int, unsigned int);
extern unsigned char (*v28) (signed short, signed int, unsigned int);
signed int v29 (unsigned char, signed short, unsigned int, unsigned char);
signed int (*v30) (unsigned char, signed short, unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v102 = -1;
unsigned char v101 = 4;
signed int v100 = 2;

signed int v29 (unsigned char v103, signed short v104, unsigned int v105, unsigned char v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = -4;
unsigned short v108 = 7;
unsigned int v107 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed short v110, unsigned char v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed short v114 = 0;
signed short v113 = -4;
signed char v112 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed short v115;
unsigned short v116;
v115 = v114 + v114;
v116 = v15 (v115);
history[history_index++] = (int)v116;
}
break;
case 2: 
{
unsigned int v117;
signed int v118;
signed short v119;
v117 = 0U - 3U;
v118 = -2 + 0;
v119 = v7 (v117, v118);
history[history_index++] = (int)v119;
}
break;
case 14: 
return v110;
default: abort ();
}
}
}
}
