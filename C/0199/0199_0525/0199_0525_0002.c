#include <stdlib.h>
unsigned char v1 (signed char);
unsigned char (*v2) (signed char) = v1;
extern void v3 (signed int, signed char, unsigned short);
extern void (*v4) (signed int, signed char, unsigned short);
extern unsigned short v5 (unsigned short, signed int, signed short, unsigned char);
extern unsigned short (*v6) (unsigned short, signed int, signed short, unsigned char);
extern unsigned int v7 (signed int, signed char, signed short);
extern unsigned int (*v8) (signed int, signed char, signed short);
extern void v9 (unsigned short, unsigned short, signed int, signed char);
extern void (*v10) (unsigned short, unsigned short, signed int, signed char);
extern signed int v11 (signed int, unsigned short, unsigned char, unsigned char);
extern signed int (*v12) (signed int, unsigned short, unsigned char, unsigned char);
extern signed short v13 (signed short, signed int);
extern signed short (*v14) (signed short, signed int);
extern void v15 (unsigned char, signed char);
extern void (*v16) (unsigned char, signed char);
signed char v17 (unsigned short, signed char);
signed char (*v18) (unsigned short, signed char) = v17;
extern signed short v19 (signed char);
extern signed short (*v20) (signed char);
extern void v21 (unsigned int, unsigned short, signed int, signed char);
extern void (*v22) (unsigned int, unsigned short, signed int, signed char);
extern unsigned char v23 (unsigned char, signed short, signed char);
extern unsigned char (*v24) (unsigned char, signed short, signed char);
extern signed int v25 (unsigned int, signed short, unsigned int);
extern signed int (*v26) (unsigned int, signed short, unsigned int);
extern signed short v27 (unsigned short, unsigned char, signed char);
extern signed short (*v28) (unsigned short, unsigned char, signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v95 = -4;
unsigned short v94 = 6;
unsigned char v93 = 1;

signed char v17 (unsigned short v96, signed char v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = -2;
signed int v99 = 2;
unsigned short v98 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed char v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
unsigned int v104 = 6U;
unsigned int v103 = 4U;
unsigned int v102 = 6U;
trace++;
switch (trace)
{
case 0: 
{
signed short v105;
signed int v106;
signed short v107;
v105 = -3 + 0;
v106 = -3 + -1;
v107 = v13 (v105, v106);
history[history_index++] = (int)v107;
}
break;
case 4: 
{
unsigned int v108;
unsigned short v109;
signed int v110;
signed char v111;
v108 = v102 - 4U;
v109 = 5 - 7;
v110 = -2 + -4;
v111 = -3 + 1;
v21 (v108, v109, v110, v111);
}
break;
case 6: 
{
unsigned int v112;
signed short v113;
unsigned int v114;
signed int v115;
v112 = v104 - 0U;
v113 = -3 + 2;
v114 = v102 - v103;
v115 = v25 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 8: 
{
unsigned int v116;
signed short v117;
unsigned int v118;
signed int v119;
v116 = 7U - v102;
v117 = -3 + -1;
v118 = v104 - v104;
v119 = v25 (v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 10: 
{
signed int v120;
signed char v121;
signed short v122;
unsigned int v123;
v120 = 0 - 3;
v121 = v101 + v101;
v122 = 0 + -2;
v123 = v7 (v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
