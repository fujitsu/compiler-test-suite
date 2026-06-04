#include <stdlib.h>
signed short v1 (signed int);
signed short (*v2) (signed int) = v1;
unsigned int v3 (signed short, unsigned char, signed char);
unsigned int (*v4) (signed short, unsigned char, signed char) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned char v7 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned char (*v8) (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (signed char, unsigned short, unsigned char);
extern unsigned int (*v12) (signed char, unsigned short, unsigned char);
signed int v13 (unsigned int);
signed int (*v14) (unsigned int) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed char v23 (signed int, unsigned int);
extern signed char (*v24) (signed int, unsigned int);
extern signed char v25 (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed short v27 (signed int, unsigned short, signed char, unsigned char);
extern signed short (*v28) (signed int, unsigned short, signed char, unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v100 = 2U;
unsigned short v99 = 3;
unsigned int v98 = 4U;

signed int v13 (unsigned int v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 0;
signed short v103 = -1;
signed char v102 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed short v105, unsigned char v106, signed char v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned int v110 = 3U;
signed char v109 = -4;
unsigned short v108 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = 2;
unsigned int v113 = 4U;
unsigned int v112 = 1U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v115;
v115 = v29 ();
history[history_index++] = (int)v115;
}
break;
case 4: 
{
signed int v116;
unsigned short v117;
signed char v118;
unsigned char v119;
signed short v120;
v116 = 1 + v111;
v117 = 0 - 6;
v118 = -1 - 1;
v119 = 4 - 3;
v120 = v27 (v116, v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
