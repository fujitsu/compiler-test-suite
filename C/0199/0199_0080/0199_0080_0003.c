#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern signed char v3 (unsigned char, signed int, signed char);
extern signed char (*v4) (unsigned char, signed int, signed char);
extern void v5 (void);
extern void (*v6) (void);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed short v9 (signed char, signed short, unsigned char);
extern signed short (*v10) (signed char, signed short, unsigned char);
extern unsigned short v11 (unsigned int, unsigned char, signed char);
extern unsigned short (*v12) (unsigned int, unsigned char, signed char);
extern unsigned short v13 (signed int, signed short);
extern unsigned short (*v14) (signed int, signed short);
extern unsigned char v15 (signed short, unsigned int, signed int, unsigned short);
extern unsigned char (*v16) (signed short, unsigned int, signed int, unsigned short);
extern void v17 (signed int);
extern void (*v18) (signed int);
static void v19 (signed char, unsigned short, signed char);
static void (*v20) (signed char, unsigned short, signed char) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned char v23 (unsigned int, unsigned char, signed char, unsigned char);
extern unsigned char (*v24) (unsigned int, unsigned char, signed char, unsigned char);
extern signed char v25 (unsigned int, unsigned short, unsigned short, signed int);
extern signed char (*v26) (unsigned int, unsigned short, unsigned short, signed int);
signed int v27 (signed short, unsigned short);
signed int (*v28) (signed short, unsigned short) = v27;
extern unsigned short v29 (signed int, unsigned short, unsigned char, signed int);
extern unsigned short (*v30) (signed int, unsigned short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v90 = 1;
unsigned char v89 = 3;
signed int v88 = -1;

signed int v27 (signed short v91, unsigned short v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned short v95 = 4;
unsigned short v94 = 6;
unsigned int v93 = 4U;
trace++;
switch (trace)
{
case 6: 
return -1;
default: abort ();
}
}
}
}

static void v19 (signed char v96, unsigned short v97, signed char v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned int v101 = 5U;
signed short v100 = 3;
signed short v99 = -3;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
signed short v104 = 3;
unsigned int v103 = 5U;
signed int v102 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v105;
unsigned char v106;
signed char v107;
unsigned char v108;
unsigned char v109;
v105 = 1U - 4U;
v106 = 2 - 7;
v107 = -3 - 3;
v108 = 6 - 5;
v109 = v23 (v105, v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 2: 
{
unsigned int v110;
unsigned char v111;
signed char v112;
unsigned char v113;
unsigned char v114;
v110 = v103 - 7U;
v111 = 2 - 7;
v112 = -1 + -3;
v113 = 6 - 2;
v114 = v23 (v110, v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 4: 
{
signed char v115;
v115 = v7 ();
history[history_index++] = (int)v115;
}
break;
case 8: 
return 3;
case 9: 
{
signed char v116;
unsigned short v117;
signed char v118;
v116 = 1 + -4;
v117 = 7 - 7;
v118 = 0 - -4;
v19 (v116, v117, v118);
}
break;
case 11: 
return 6;
default: abort ();
}
}
}
}
