#include <stdlib.h>
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern signed int v5 (signed int, unsigned char, unsigned char, signed short);
extern signed int (*v6) (signed int, unsigned char, unsigned char, signed short);
extern unsigned int v7 (unsigned int, unsigned int, unsigned char);
extern unsigned int (*v8) (unsigned int, unsigned int, unsigned char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
signed int v11 (signed char, signed int, unsigned short);
signed int (*v12) (signed char, signed int, unsigned short) = v11;
extern signed char v13 (signed int, signed short, unsigned char);
extern signed char (*v14) (signed int, signed short, unsigned char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
signed int v19 (signed short, signed int);
signed int (*v20) (signed short, signed int) = v19;
unsigned short v21 (unsigned int, signed char, signed int, unsigned short);
unsigned short (*v22) (unsigned int, signed char, signed int, unsigned short) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v27 (unsigned char, signed short, signed int);
extern signed int (*v28) (unsigned char, signed short, signed int);
extern unsigned int v29 (signed short, unsigned int, signed short);
extern unsigned int (*v30) (signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v95 = 7;
signed int v94 = 2;
signed short v93 = 3;

unsigned short v21 (unsigned int v96, signed char v97, signed int v98, unsigned short v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 1;
signed short v101 = -4;
unsigned char v100 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v103;
signed short v104;
signed int v105;
signed int v106;
v103 = 5 - v100;
v104 = 1 - -4;
v105 = v98 + v98;
v106 = v27 (v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 3: 
return v102;
case 5: 
{
unsigned char v107;
signed short v108;
signed int v109;
signed int v110;
v107 = v100 + v100;
v108 = 1 + -1;
v109 = v98 + -4;
v110 = v27 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 7: 
return 1;
default: abort ();
}
}
}
}

signed int v19 (signed short v111, signed int v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 7;
signed short v114 = 1;
unsigned int v113 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed char v116, signed int v117, unsigned short v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned int v121 = 2U;
unsigned char v120 = 4;
unsigned int v119 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
