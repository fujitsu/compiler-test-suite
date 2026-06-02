#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
signed char v3 (unsigned int, signed char);
signed char (*v4) (unsigned int, signed char) = v3;
extern signed char v5 (unsigned int, signed char);
extern signed char (*v6) (unsigned int, signed char);
signed short v7 (signed int);
signed short (*v8) (signed int) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned short v11 (signed short, signed char);
extern unsigned short (*v12) (signed short, signed char);
static void v13 (unsigned short, signed short, signed char);
static void (*v14) (unsigned short, signed short, signed char) = v13;
extern signed int v17 (void);
extern signed int (*v18) (void);
signed short v19 (void);
signed short (*v20) (void) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned short v23 (unsigned int, unsigned short);
extern unsigned short (*v24) (unsigned int, unsigned short);
extern unsigned int v25 (unsigned int, signed int, signed int);
extern unsigned int (*v26) (unsigned int, signed int, signed int);
extern unsigned char v27 (unsigned short, signed short, unsigned char);
extern unsigned char (*v28) (unsigned short, signed short, unsigned char);
extern unsigned short v29 (signed short, unsigned int, signed short);
extern unsigned short (*v30) (signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v83 = -4;
unsigned int v82 = 2U;
unsigned char v81 = 6;

signed short v19 (void)
{
{
for (;;) {
unsigned int v86 = 3U;
unsigned int v85 = 5U;
signed short v84 = -1;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v87;
signed short v88;
signed char v89;
v87 = 1 - 5;
v88 = v84 + v84;
v89 = 0 + -3;
v13 (v87, v88, v89);
}
break;
case 4: 
return v84;
case 7: 
{
unsigned int v90;
signed int v91;
signed int v92;
unsigned int v93;
v90 = 1U - v85;
v91 = -1 + 3;
v92 = 2 - -4;
v93 = v25 (v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 13: 
return v84;
default: abort ();
}
}
}
}

static void v13 (unsigned short v94, signed short v95, signed char v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = -2;
signed int v98 = 2;
signed int v97 = 1;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}

signed short v7 (signed int v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = 3;
unsigned short v102 = 2;
signed char v101 = -1;
trace++;
switch (trace)
{
case 9: 
{
signed int v104;
v104 = v17 ();
history[history_index++] = (int)v104;
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}

signed char v3 (unsigned int v105, signed char v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 7;
signed int v108 = 2;
signed char v107 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
