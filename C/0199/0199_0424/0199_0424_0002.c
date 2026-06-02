#include <stdlib.h>
extern void v3 (void);
extern void (*v4) (void);
extern unsigned int v5 (unsigned char, unsigned int);
extern unsigned int (*v6) (unsigned char, unsigned int);
signed int v7 (signed short, unsigned int, unsigned int);
signed int (*v8) (signed short, unsigned int, unsigned int) = v7;
signed int v9 (unsigned int, unsigned int, signed char, unsigned char);
signed int (*v10) (unsigned int, unsigned int, signed char, unsigned char) = v9;
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern unsigned char v13 (signed short, signed int);
extern unsigned char (*v14) (signed short, signed int);
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
extern void v19 (unsigned short, unsigned short);
extern void (*v20) (unsigned short, unsigned short);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern signed int v23 (signed char, signed short);
extern signed int (*v24) (signed char, signed short);
extern signed short v25 (unsigned short, signed short);
extern signed short (*v26) (unsigned short, signed short);
extern unsigned int v27 (signed short, unsigned short, signed char, unsigned short);
extern unsigned int (*v28) (signed short, unsigned short, signed char, unsigned short);
extern signed short v29 (signed short, unsigned short, signed short, signed int);
extern signed short (*v30) (signed short, unsigned short, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v101 = -4;
unsigned short v100 = 6;
signed char v99 = 2;

signed int v9 (unsigned int v102, unsigned int v103, signed char v104, unsigned char v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = -3;
signed int v107 = -4;
signed char v106 = 3;
trace++;
switch (trace)
{
case 5: 
{
signed short v109;
unsigned short v110;
signed char v111;
unsigned short v112;
unsigned int v113;
v109 = v108 - v108;
v110 = 7 + 1;
v111 = 3 - v106;
v112 = 3 - 4;
v113 = v27 (v109, v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 7: 
{
signed short v114;
signed int v115;
unsigned short v116;
v114 = v108 - v108;
v115 = v107 + v107;
v116 = v17 (v114, v115);
history[history_index++] = (int)v116;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}

signed int v7 (signed short v117, unsigned int v118, unsigned int v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 2;
unsigned int v121 = 5U;
unsigned char v120 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
