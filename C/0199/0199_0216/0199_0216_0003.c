#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern signed int v3 (signed int, unsigned char, signed int);
extern signed int (*v4) (signed int, unsigned char, signed int);
extern unsigned int v5 (unsigned short);
extern unsigned int (*v6) (unsigned short);
extern signed short v7 (unsigned int, signed int, unsigned short, signed int);
extern signed short (*v8) (unsigned int, signed int, unsigned short, signed int);
extern void v9 (void);
extern void (*v10) (void);
signed int v11 (unsigned short, unsigned int, signed int);
signed int (*v12) (unsigned short, unsigned int, signed int) = v11;
unsigned short v13 (signed char);
unsigned short (*v14) (signed char) = v13;
extern unsigned char v15 (unsigned short, unsigned int, unsigned short, signed char);
extern unsigned char (*v16) (unsigned short, unsigned int, unsigned short, signed char);
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed int v21 (signed int, signed short);
extern signed int (*v22) (signed int, signed short);
extern unsigned short v23 (signed short, unsigned char, signed char);
extern unsigned short (*v24) (signed short, unsigned char, signed char);
extern signed int v25 (signed char, unsigned int, unsigned char, unsigned int);
extern signed int (*v26) (signed char, unsigned int, unsigned char, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (unsigned char, unsigned int);
extern unsigned int (*v30) (unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v96 = -4;
signed int v95 = -2;
signed char v94 = 0;

unsigned short v13 (signed char v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 5;
signed int v99 = 0;
signed char v98 = 2;
trace++;
switch (trace)
{
case 8: 
{
signed short v101;
unsigned int v102;
v101 = 1 + -3;
v102 = v17 (v101);
history[history_index++] = (int)v102;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}

signed int v11 (unsigned short v103, unsigned int v104, signed int v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = 2;
signed char v107 = -4;
signed short v106 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
signed int v111 = 3;
signed char v110 = -2;
unsigned int v109 = 5U;
trace++;
switch (trace)
{
case 0: 
{
signed int v112;
unsigned char v113;
signed int v114;
signed int v115;
v112 = v111 - 0;
v113 = 5 + 6;
v114 = v111 - v111;
v115 = v3 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 2: 
{
unsigned char v116;
unsigned int v117;
unsigned int v118;
v116 = 3 + 5;
v117 = 6U - v109;
v118 = v29 (v116, v117);
history[history_index++] = (int)v118;
}
break;
case 4: 
{
signed int v119;
unsigned char v120;
signed int v121;
signed int v122;
v119 = -4 + -1;
v120 = 0 - 7;
v121 = -3 + v111;
v122 = v3 (v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 6: 
{
unsigned short v123;
unsigned int v124;
v123 = 5 - 1;
v124 = v5 (v123);
history[history_index++] = (int)v124;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}
