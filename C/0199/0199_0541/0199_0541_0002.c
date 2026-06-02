#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed short v3 (unsigned char);
extern signed short (*v4) (unsigned char);
signed char v5 (signed char, unsigned int, signed char);
signed char (*v6) (signed char, unsigned int, signed char) = v5;
extern signed short v7 (unsigned int, signed short, unsigned short);
extern signed short (*v8) (unsigned int, signed short, unsigned short);
extern signed int v9 (signed int, signed short, unsigned int);
extern signed int (*v10) (signed int, signed short, unsigned int);
extern signed char v11 (signed char, unsigned short, signed int, signed char);
extern signed char (*v12) (signed char, unsigned short, signed int, signed char);
extern unsigned char v13 (signed char, signed char, signed char, signed char);
extern unsigned char (*v14) (signed char, signed char, signed char, signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (unsigned short, signed char, unsigned int, unsigned int);
extern signed short (*v18) (unsigned short, signed char, unsigned int, unsigned int);
extern signed int v19 (signed short, unsigned int, signed char);
extern signed int (*v20) (signed short, unsigned int, signed char);
extern unsigned char v21 (unsigned int, unsigned short, unsigned short, unsigned short);
extern unsigned char (*v22) (unsigned int, unsigned short, unsigned short, unsigned short);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern unsigned char v25 (unsigned int);
extern unsigned char (*v26) (unsigned int);
unsigned short v27 (signed short, unsigned int);
unsigned short (*v28) (signed short, unsigned int) = v27;
extern signed short v29 (signed int);
extern signed short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v85 = 1;
signed int v84 = 1;
signed char v83 = 3;

unsigned short v27 (signed short v86, unsigned int v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = 3;
unsigned int v89 = 3U;
unsigned short v88 = 5;
trace++;
switch (trace)
{
case 3: 
{
signed short v91;
v91 = v15 ();
history[history_index++] = (int)v91;
}
break;
case 13: 
return 4;
default: abort ();
}
}
}
}

unsigned int v23 (void)
{
{
for (;;) {
unsigned int v94 = 0U;
unsigned int v93 = 5U;
unsigned int v92 = 3U;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v95;
signed char v96;
unsigned int v97;
unsigned int v98;
signed short v99;
v95 = 1 + 7;
v96 = -4 + -3;
v97 = 3U - v92;
v98 = v93 - v94;
v99 = v17 (v95, v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 7: 
{
unsigned short v100;
signed char v101;
unsigned int v102;
unsigned int v103;
signed short v104;
v100 = 7 + 5;
v101 = 3 + 2;
v102 = v94 + 2U;
v103 = v93 + v94;
v104 = v17 (v100, v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 9: 
{
unsigned short v105;
signed char v106;
unsigned int v107;
unsigned int v108;
signed short v109;
v105 = 7 + 7;
v106 = 3 - 3;
v107 = v93 - v94;
v108 = v93 + v94;
v109 = v17 (v105, v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 11: 
return 7U;
default: abort ();
}
}
}
}

signed char v5 (signed char v110, unsigned int v111, signed char v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned short v115 = 5;
unsigned char v114 = 1;
unsigned char v113 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v116;
unsigned char v117;
v116 = v111 - 6U;
v117 = v25 (v116);
history[history_index++] = (int)v117;
}
break;
case 15: 
return v110;
default: abort ();
}
}
}
}
