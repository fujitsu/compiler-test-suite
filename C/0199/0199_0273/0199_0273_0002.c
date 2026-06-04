#include <stdlib.h>
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
signed int v5 (unsigned short, unsigned int);
signed int (*v6) (unsigned short, unsigned int) = v5;
extern signed int v7 (unsigned char, signed int);
extern signed int (*v8) (unsigned char, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (unsigned char, unsigned short, signed int);
extern unsigned int (*v12) (unsigned char, unsigned short, signed int);
extern signed short v13 (signed short, signed char, unsigned int, signed char);
extern signed short (*v14) (signed short, signed char, unsigned int, signed char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned int v19 (signed int, unsigned char);
extern unsigned int (*v20) (signed int, unsigned char);
extern signed int v21 (signed int, signed short);
extern signed int (*v22) (signed int, signed short);
extern signed short v23 (signed char, unsigned short, signed short, unsigned short);
extern signed short (*v24) (signed char, unsigned short, signed short, unsigned short);
unsigned char v25 (signed int);
unsigned char (*v26) (signed int) = v25;
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
extern unsigned int v29 (unsigned int, signed short, signed int);
extern unsigned int (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v98 = 5;
signed short v97 = -4;
unsigned short v96 = 2;

unsigned char v25 (signed int v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
signed short v102 = -4;
signed char v101 = 3;
unsigned int v100 = 7U;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v103;
signed short v104;
signed int v105;
unsigned int v106;
v103 = v100 + v100;
v104 = v102 + -3;
v105 = 0 + -1;
v106 = v29 (v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 5: 
{
unsigned int v107;
signed short v108;
signed int v109;
unsigned int v110;
v107 = 0U - 6U;
v108 = v102 + v102;
v109 = -4 - v99;
v110 = v29 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 7: 
{
unsigned int v111;
signed short v112;
signed int v113;
unsigned int v114;
v111 = 3U + v100;
v112 = v102 + -3;
v113 = v99 + v99;
v114 = v29 (v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 9: 
{
unsigned int v115;
signed short v116;
signed int v117;
unsigned int v118;
v115 = 3U + v100;
v116 = 1 - 0;
v117 = v99 - v99;
v118 = v29 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 11: 
return 6;
default: abort ();
}
}
}
}

signed int v5 (unsigned short v119, unsigned int v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed int v123 = 2;
signed short v122 = 2;
unsigned int v121 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
