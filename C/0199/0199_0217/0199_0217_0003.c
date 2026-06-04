#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
static unsigned char v3 (signed char, signed char, unsigned char, signed char);
static unsigned char (*v4) (signed char, signed char, unsigned char, signed char) = v3;
extern unsigned int v5 (unsigned int, signed int, unsigned short, signed short);
extern unsigned int (*v6) (unsigned int, signed int, unsigned short, signed short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed short v9 (unsigned short, signed short);
extern signed short (*v10) (unsigned short, signed short);
extern void v11 (unsigned int, signed int);
extern void (*v12) (unsigned int, signed int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v15 (signed short, signed short, signed char);
extern unsigned int (*v16) (signed short, signed short, signed char);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned int v19 (signed short, unsigned short);
extern unsigned int (*v20) (signed short, unsigned short);
extern unsigned short v21 (signed short, unsigned char, unsigned char);
extern unsigned short (*v22) (signed short, unsigned char, unsigned char);
extern unsigned short v23 (unsigned short, unsigned char, signed int, signed int);
extern unsigned short (*v24) (unsigned short, unsigned char, signed int, signed int);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v99 = 4;
signed short v98 = -1;
unsigned short v97 = 3;

static unsigned char v3 (signed char v100, signed char v101, unsigned char v102, signed char v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = 3;
unsigned char v105 = 3;
unsigned int v104 = 0U;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v107;
unsigned char v108;
signed int v109;
signed int v110;
unsigned short v111;
v107 = 4 + 4;
v108 = 4 + v102;
v109 = 0 - -2;
v110 = 0 - 2;
v111 = v23 (v107, v108, v109, v110);
history[history_index++] = (int)v111;
}
break;
case 3: 
{
unsigned short v112;
unsigned char v113;
signed int v114;
signed int v115;
unsigned short v116;
v112 = 2 - 6;
v113 = v102 + v102;
v114 = -1 - 0;
v115 = -4 - -4;
v116 = v23 (v112, v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 5: 
return v105;
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
signed short v119 = 0;
unsigned char v118 = 0;
unsigned short v117 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed char v120;
signed char v121;
unsigned char v122;
signed char v123;
unsigned char v124;
v120 = -1 + -3;
v121 = -1 - 3;
v122 = v118 + 3;
v123 = -4 + -2;
v124 = v3 (v120, v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 6: 
{
unsigned char v125;
v125 = v13 ();
history[history_index++] = (int)v125;
}
break;
case 8: 
{
unsigned int v126;
signed int v127;
v126 = 5U + 1U;
v127 = -2 - 2;
v11 (v126, v127);
}
break;
case 12: 
return 5;
default: abort ();
}
}
}
}
