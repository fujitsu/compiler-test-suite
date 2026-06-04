#include <stdlib.h>
extern signed short v3 (signed short, unsigned short, signed int, signed short);
extern signed short (*v4) (signed short, unsigned short, signed int, signed short);
extern unsigned short v5 (unsigned short, signed short, unsigned int);
extern unsigned short (*v6) (unsigned short, signed short, unsigned int);
extern unsigned short v7 (unsigned int, unsigned short);
extern unsigned short (*v8) (unsigned int, unsigned short);
extern signed char v9 (signed short, signed char, signed char);
extern signed char (*v10) (signed short, signed char, signed char);
extern signed short v11 (unsigned short, unsigned int, unsigned short);
extern signed short (*v12) (unsigned short, unsigned int, unsigned short);
extern signed int v13 (unsigned short, unsigned int, unsigned int);
extern signed int (*v14) (unsigned short, unsigned int, unsigned int);
extern signed char v15 (void);
extern signed char (*v16) (void);
unsigned char v17 (signed short, signed short);
unsigned char (*v18) (signed short, signed short) = v17;
extern unsigned short v19 (signed char);
extern unsigned short (*v20) (signed char);
extern signed char v21 (signed short, unsigned char, unsigned short, unsigned short);
extern signed char (*v22) (signed short, unsigned char, unsigned short, unsigned short);
extern signed short v23 (signed int, signed int, unsigned short, unsigned char);
extern signed short (*v24) (signed int, signed int, unsigned short, unsigned char);
extern unsigned short v25 (signed char, unsigned char);
extern unsigned short (*v26) (signed char, unsigned char);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern unsigned int v29 (unsigned char, unsigned int, signed int, signed short);
extern unsigned int (*v30) (unsigned char, unsigned int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v82 = -2;
signed int v81 = 0;
signed int v80 = 2;

unsigned int v27 (void)
{
{
for (;;) {
signed short v85 = -3;
unsigned int v84 = 3U;
unsigned char v83 = 3;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v86;
unsigned int v87;
signed int v88;
signed short v89;
unsigned int v90;
v86 = 4 - 5;
v87 = 6U - 5U;
v88 = -4 + 3;
v89 = v85 + v85;
v90 = v29 (v86, v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 4: 
{
unsigned char v91;
unsigned int v92;
signed int v93;
signed short v94;
unsigned int v95;
v91 = v83 + v83;
v92 = 1U - 5U;
v93 = 2 - -1;
v94 = 3 - v85;
v95 = v29 (v91, v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 6: 
{
unsigned char v96;
unsigned int v97;
signed int v98;
signed short v99;
unsigned int v100;
v96 = 4 + v83;
v97 = 2U - 6U;
v98 = -1 + 3;
v99 = 3 + v85;
v100 = v29 (v96, v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 8: 
{
unsigned char v101;
unsigned int v102;
signed int v103;
signed short v104;
unsigned int v105;
v101 = 2 - v83;
v102 = 3U + v84;
v103 = -4 + 2;
v104 = v85 + -4;
v105 = v29 (v101, v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 10: 
{
unsigned char v106;
unsigned int v107;
signed int v108;
signed short v109;
unsigned int v110;
v106 = v83 - v83;
v107 = v84 - v84;
v108 = 3 - 1;
v109 = v85 + v85;
v110 = v29 (v106, v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 12: 
return 2U;
default: abort ();
}
}
}
}

unsigned char v17 (signed short v111, signed short v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned short v115 = 6;
unsigned short v114 = 2;
signed int v113 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
