#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short, unsigned char, signed int);
extern unsigned int (*v2) (unsigned short, signed short, unsigned char, signed int);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed short v5 (unsigned int);
extern signed short (*v6) (unsigned int);
extern signed char v7 (signed char, signed int);
extern signed char (*v8) (signed char, signed int);
extern unsigned int v9 (unsigned short, signed short, unsigned int);
extern unsigned int (*v10) (unsigned short, signed short, unsigned int);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed short v17 (unsigned int, unsigned char, unsigned char);
extern signed short (*v18) (unsigned int, unsigned char, unsigned char);
extern signed short v19 (signed char, unsigned int, unsigned short, signed short);
extern signed short (*v20) (signed char, unsigned int, unsigned short, signed short);
extern signed int v21 (signed int, signed int, signed short);
extern signed int (*v22) (signed int, signed int, signed short);
void v23 (unsigned short, signed short, signed char);
void (*v24) (unsigned short, signed short, signed char) = v23;
extern signed short v25 (unsigned char, unsigned short, signed short, unsigned char);
extern signed short (*v26) (unsigned char, unsigned short, signed short, unsigned char);
extern unsigned int v27 (signed int, unsigned short, signed char, unsigned char);
extern unsigned int (*v28) (signed int, unsigned short, signed char, unsigned char);
extern void v29 (signed short, unsigned char);
extern void (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v97 = 6U;
unsigned int v96 = 2U;
unsigned short v95 = 5;

void v23 (unsigned short v98, signed short v99, signed char v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = -3;
unsigned short v102 = 2;
unsigned short v101 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed int v104;
unsigned short v105;
signed char v106;
unsigned char v107;
unsigned int v108;
v104 = 2 - -1;
v105 = 3 + v101;
v106 = 3 + v100;
v107 = 4 - 3;
v108 = v27 (v104, v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 3: 
{
signed int v109;
unsigned short v110;
signed char v111;
unsigned char v112;
unsigned int v113;
v109 = 2 - 3;
v110 = 1 - v98;
v111 = 2 + v100;
v112 = 1 - 2;
v113 = v27 (v109, v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 5: 
{
signed int v114;
unsigned short v115;
signed char v116;
unsigned char v117;
unsigned int v118;
v114 = 0 - -3;
v115 = 3 - v98;
v116 = 2 + v100;
v117 = 1 - 5;
v118 = v27 (v114, v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 7: 
return;
default: abort ();
}
}
}
}
