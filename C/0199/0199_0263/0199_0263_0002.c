#include <stdlib.h>
extern void v1 (unsigned short, unsigned char, unsigned char, signed int);
extern void (*v2) (unsigned short, unsigned char, unsigned char, signed int);
extern signed short v3 (unsigned short, unsigned short);
extern signed short (*v4) (unsigned short, unsigned short);
extern void v5 (void);
extern void (*v6) (void);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed int v11 (signed short, signed char);
extern signed int (*v12) (signed short, signed char);
extern signed int v13 (signed char, unsigned char);
extern signed int (*v14) (signed char, unsigned char);
extern signed short v15 (signed short, signed char);
extern signed short (*v16) (signed short, signed char);
signed char v17 (unsigned int);
signed char (*v18) (unsigned int) = v17;
extern unsigned int v19 (signed int, unsigned int, signed short);
extern unsigned int (*v20) (signed int, unsigned int, signed short);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern unsigned short v23 (signed short, signed int, signed char);
extern unsigned short (*v24) (signed short, signed int, signed char);
extern unsigned char v25 (signed int, unsigned char);
extern unsigned char (*v26) (signed int, unsigned char);
signed int v27 (unsigned char);
signed int (*v28) (unsigned char) = v27;
static signed short v29 (void);
static signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v88 = -2;
unsigned int v87 = 0U;
unsigned short v86 = 5;

static signed short v29 (void)
{
{
for (;;) {
signed int v91 = 1;
unsigned int v90 = 0U;
signed int v89 = -3;
trace++;
switch (trace)
{
case 8: 
return 1;
default: abort ();
}
}
}
}

signed int v27 (unsigned char v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = -4;
signed short v94 = -3;
unsigned char v93 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned int v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = -3;
signed short v98 = 0;
unsigned short v97 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed short v100;
signed int v101;
signed char v102;
unsigned short v103;
v100 = 1 + -2;
v101 = 1 - -1;
v102 = v99 + -2;
v103 = v23 (v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 3: 
{
signed char v104;
unsigned short v105;
v104 = 2 + v99;
v105 = v21 (v104);
history[history_index++] = (int)v105;
}
break;
case 5: 
return -4;
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
signed int v108 = 3;
unsigned int v107 = 3U;
signed int v106 = -2;
trace++;
switch (trace)
{
case 7: 
{
signed short v109;
v109 = v29 ();
history[history_index++] = (int)v109;
}
break;
case 9: 
{
signed short v110;
signed char v111;
signed int v112;
v110 = 1 + -2;
v111 = -4 - 2;
v112 = v11 (v110, v111);
history[history_index++] = (int)v112;
}
break;
case 13: 
return 3U;
default: abort ();
}
}
}
}
