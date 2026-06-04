#include <stdlib.h>
extern signed int v3 (unsigned short, unsigned char);
extern signed int (*v4) (unsigned short, unsigned char);
extern void v5 (signed int, unsigned int, unsigned char);
extern void (*v6) (signed int, unsigned int, unsigned char);
signed int v7 (unsigned int, signed short, unsigned int);
signed int (*v8) (unsigned int, signed short, unsigned int) = v7;
extern void v9 (unsigned int, signed short);
extern void (*v10) (unsigned int, signed short);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern signed int v13 (unsigned int, unsigned int, unsigned int);
extern signed int (*v14) (unsigned int, unsigned int, unsigned int);
extern signed short v15 (unsigned short, unsigned char);
extern signed short (*v16) (unsigned short, unsigned char);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern signed char v19 (signed short, signed int, signed char, unsigned short);
extern signed char (*v20) (signed short, signed int, signed char, unsigned short);
extern signed char v21 (unsigned char, unsigned int, signed int, unsigned short);
extern signed char (*v22) (unsigned char, unsigned int, signed int, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v25 (signed int, signed char, signed short);
extern signed short (*v26) (signed int, signed char, signed short);
extern void v27 (unsigned char, unsigned char, unsigned int, unsigned short);
extern void (*v28) (unsigned char, unsigned char, unsigned int, unsigned short);
signed short v29 (signed short, signed int, signed int);
signed short (*v30) (signed short, signed int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v102 = 2;
signed short v101 = 2;
signed char v100 = 2;

signed short v29 (signed short v103, signed int v104, signed int v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = -1;
signed char v107 = 2;
unsigned short v106 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed int v109;
unsigned int v110;
unsigned char v111;
v109 = -1 + v105;
v110 = 6U - 4U;
v111 = 6 - 5;
v5 (v109, v110, v111);
}
break;
case 4: 
{
signed int v112;
unsigned int v113;
unsigned char v114;
v112 = v104 + v105;
v113 = 1U + 6U;
v114 = 4 + 6;
v5 (v112, v113, v114);
}
break;
case 7: 
{
signed int v115;
unsigned int v116;
unsigned char v117;
v115 = v104 + v104;
v116 = 7U - 2U;
v117 = 5 - 6;
v5 (v115, v116, v117);
}
break;
case 13: 
return v103;
case 16: 
return v103;
case 19: 
return 0;
default: abort ();
}
}
}
}

signed int v7 (unsigned int v118, signed short v119, unsigned int v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 4;
signed short v122 = -3;
signed short v121 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
