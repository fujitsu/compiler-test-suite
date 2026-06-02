#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed short);
extern unsigned char (*v2) (unsigned char, signed short);
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
unsigned int v5 (signed char, unsigned short, signed char, unsigned char);
unsigned int (*v6) (signed char, unsigned short, signed char, unsigned char) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed char, unsigned short, unsigned char);
extern signed short (*v12) (signed char, unsigned short, unsigned char);
extern signed int v13 (unsigned short, signed int, signed char, signed short);
extern signed int (*v14) (unsigned short, signed int, signed char, signed short);
extern signed int v15 (unsigned int, unsigned int, signed short, unsigned short);
extern signed int (*v16) (unsigned int, unsigned int, signed short, unsigned short);
extern signed short v19 (unsigned int, unsigned int, unsigned short, signed int);
extern signed short (*v20) (unsigned int, unsigned int, unsigned short, signed int);
extern signed int v21 (unsigned int, signed int, signed short, signed int);
extern signed int (*v22) (unsigned int, signed int, signed short, signed int);
extern void v23 (signed char);
extern void (*v24) (signed char);
static unsigned char v25 (unsigned int, signed short, unsigned short);
static unsigned char (*v26) (unsigned int, signed short, unsigned short) = v25;
unsigned int v27 (unsigned char, unsigned int, unsigned short, unsigned int);
unsigned int (*v28) (unsigned char, unsigned int, unsigned short, unsigned int) = v27;
extern signed int v29 (unsigned int, unsigned char, unsigned char);
extern signed int (*v30) (unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v81 = -3;
unsigned short v80 = 5;
unsigned char v79 = 2;

unsigned int v27 (unsigned char v82, unsigned int v83, unsigned short v84, unsigned int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned int v88 = 3U;
signed int v87 = -4;
signed char v86 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v25 (unsigned int v89, signed short v90, unsigned short v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 4U;
unsigned short v93 = 4;
signed int v92 = -3;
trace++;
switch (trace)
{
case 6: 
return 1;
case 10: 
return 7;
default: abort ();
}
}
}
}

unsigned int v5 (signed char v95, unsigned short v96, signed char v97, unsigned char v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 7;
unsigned short v100 = 2;
unsigned int v99 = 6U;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v102;
signed int v103;
signed short v104;
signed int v105;
signed int v106;
v102 = 4U + v99;
v103 = 3 - 2;
v104 = 1 + -2;
v105 = 3 - -1;
v106 = v21 (v102, v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 5: 
{
unsigned int v107;
signed short v108;
unsigned short v109;
unsigned char v110;
v107 = 1U - v99;
v108 = -3 - -2;
v109 = v101 - 5;
v110 = v25 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 7: 
{
signed int v111;
v111 = v9 ();
history[history_index++] = (int)v111;
}
break;
case 9: 
{
unsigned int v112;
signed short v113;
unsigned short v114;
unsigned char v115;
v112 = v99 - v99;
v113 = -4 + 2;
v114 = v96 - v100;
v115 = v25 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 11: 
return v99;
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
unsigned int v118 = 0U;
unsigned int v117 = 2U;
signed short v116 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
