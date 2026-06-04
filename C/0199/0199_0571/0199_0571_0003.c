#include <stdlib.h>
unsigned int v1 (unsigned short);
unsigned int (*v2) (unsigned short) = v1;
unsigned short v3 (unsigned char);
unsigned short (*v4) (unsigned char) = v3;
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern void v7 (unsigned char, unsigned int, signed short);
extern void (*v8) (unsigned char, unsigned int, signed short);
extern unsigned int v9 (signed char, unsigned short, unsigned int, signed short);
extern unsigned int (*v10) (signed char, unsigned short, unsigned int, signed short);
extern signed int v11 (signed short, signed char);
extern signed int (*v12) (signed short, signed char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern signed char v19 (unsigned char, unsigned int);
extern signed char (*v20) (unsigned char, unsigned int);
static void v21 (void);
static void (*v22) (void) = v21;
extern unsigned short v23 (signed int, unsigned int, signed char);
extern unsigned short (*v24) (signed int, unsigned int, signed char);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
extern void v27 (void);
extern void (*v28) (void);
extern signed short v29 (unsigned short, signed char, unsigned char);
extern signed short (*v30) (unsigned short, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v94 = 3;
unsigned short v93 = 7;
signed short v92 = 3;

static void v21 (void)
{
{
for (;;) {
signed short v97 = 1;
unsigned char v96 = 2;
unsigned short v95 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed int v98;
unsigned int v99;
signed char v100;
unsigned short v101;
v98 = 0 - -1;
v99 = 1U + 5U;
v100 = -4 + 2;
v101 = v23 (v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 3: 
{
signed int v102;
unsigned int v103;
signed char v104;
unsigned short v105;
v102 = -1 - 2;
v103 = 1U - 7U;
v104 = -2 + 3;
v105 = v23 (v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 5: 
{
signed int v106;
unsigned int v107;
signed char v108;
unsigned short v109;
v106 = 2 - 1;
v107 = 0U + 5U;
v108 = -3 + 1;
v109 = v23 (v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 9: 
{
signed int v110;
unsigned int v111;
signed char v112;
unsigned short v113;
v110 = 3 + -1;
v111 = 6U - 6U;
v112 = -4 - 1;
v113 = v23 (v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = 1;
unsigned short v116 = 0;
signed char v115 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
unsigned short v121 = 0;
signed int v120 = 3;
unsigned char v119 = 2;
trace++;
switch (trace)
{
case 0: 
{
v21 ();
}
break;
case 14: 
return 2U;
default: abort ();
}
}
}
}
