#include <stdlib.h>
unsigned int v1 (unsigned char);
unsigned int (*v2) (unsigned char) = v1;
extern unsigned char v3 (signed char, unsigned char, signed char);
extern unsigned char (*v4) (signed char, unsigned char, signed char);
extern signed char v5 (signed char, signed int);
extern signed char (*v6) (signed char, signed int);
extern signed char v7 (signed short);
extern signed char (*v8) (signed short);
extern unsigned int v9 (signed int);
extern unsigned int (*v10) (signed int);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed short v13 (signed int, signed short, signed short, signed int);
extern signed short (*v14) (signed int, signed short, signed short, signed int);
extern signed int v15 (unsigned int, signed short, unsigned char, unsigned short);
extern signed int (*v16) (unsigned int, signed short, unsigned char, unsigned short);
extern signed char v17 (unsigned short, signed short, unsigned char, unsigned int);
extern signed char (*v18) (unsigned short, signed short, unsigned char, unsigned int);
extern unsigned int v19 (signed int, signed char);
extern unsigned int (*v20) (signed int, signed char);
extern void v21 (signed short, signed char);
extern void (*v22) (signed short, signed char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned int v25 (unsigned short, unsigned int, unsigned int);
extern unsigned int (*v26) (unsigned short, unsigned int, unsigned int);
extern signed char v27 (signed char, signed int, unsigned char, signed char);
extern signed char (*v28) (signed char, signed int, unsigned char, signed char);
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v102 = 7;
unsigned int v101 = 3U;
signed int v100 = 2;

unsigned int v1 (unsigned char v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = -2;
unsigned short v105 = 5;
signed short v104 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v107;
signed short v108;
v107 = v105 - 5;
v108 = v29 (v107);
history[history_index++] = (int)v108;
}
break;
case 2: 
{
signed char v109;
signed int v110;
signed char v111;
v109 = 1 - -2;
v110 = 3 + 3;
v111 = v5 (v109, v110);
history[history_index++] = (int)v111;
}
break;
case 8: 
{
unsigned short v112;
signed short v113;
v112 = 6 - v105;
v113 = v29 (v112);
history[history_index++] = (int)v113;
}
break;
case 10: 
{
unsigned int v114;
signed short v115;
unsigned char v116;
unsigned short v117;
signed int v118;
v114 = 1U + 7U;
v115 = v104 - v104;
v116 = v103 - 6;
v117 = v105 - v105;
v118 = v15 (v114, v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 12: 
return 1U;
default: abort ();
}
}
}
}
