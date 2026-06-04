#include <stdlib.h>
extern unsigned char v3 (signed int, signed short, unsigned char);
extern unsigned char (*v4) (signed int, signed short, unsigned char);
extern unsigned short v5 (signed short, unsigned char, unsigned int, signed char);
extern unsigned short (*v6) (signed short, unsigned char, unsigned int, signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed short v9 (unsigned char, signed short, signed char, unsigned short);
extern signed short (*v10) (unsigned char, signed short, signed char, unsigned short);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
extern unsigned int v13 (signed char, unsigned short, unsigned char);
extern unsigned int (*v14) (signed char, unsigned short, unsigned char);
extern unsigned int v15 (signed int, unsigned char, unsigned short);
extern unsigned int (*v16) (signed int, unsigned char, unsigned short);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern unsigned short v19 (signed char, unsigned char, signed int, unsigned char);
extern unsigned short (*v20) (signed char, unsigned char, signed int, unsigned char);
signed int v21 (unsigned short, unsigned short);
signed int (*v22) (unsigned short, unsigned short) = v21;
extern void v23 (signed int, signed int, signed short);
extern void (*v24) (signed int, signed int, signed short);
extern unsigned short v25 (signed int, signed short, signed short, signed int);
extern unsigned short (*v26) (signed int, signed short, signed short, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (unsigned short, unsigned int, signed short);
extern signed int (*v30) (unsigned short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v101 = 0;
signed char v100 = -3;
unsigned int v99 = 3U;

signed int v21 (unsigned short v102, unsigned short v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned short v106 = 5;
unsigned short v105 = 0;
signed int v104 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed int v107;
signed int v108;
signed short v109;
v107 = v104 + 2;
v108 = v104 + 0;
v109 = -3 - -1;
v23 (v107, v108, v109);
}
break;
case 5: 
{
signed int v110;
signed int v111;
signed short v112;
v110 = v104 - v104;
v111 = 1 - 1;
v112 = -3 + -1;
v23 (v110, v111, v112);
}
break;
case 7: 
{
signed int v113;
signed int v114;
signed short v115;
v113 = -1 + 3;
v114 = -2 - 3;
v115 = -1 + -3;
v23 (v113, v114, v115);
}
break;
case 9: 
{
signed int v116;
signed int v117;
signed short v118;
v116 = v104 + -2;
v117 = v104 + 1;
v118 = -1 + -2;
v23 (v116, v117, v118);
}
break;
case 11: 
return -1;
default: abort ();
}
}
}
}

unsigned short v11 (void)
{
{
for (;;) {
signed int v121 = 3;
signed int v120 = 2;
unsigned short v119 = 3;
trace++;
switch (trace)
{
case 1: 
return 7;
default: abort ();
}
}
}
}
