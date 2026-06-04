#include <stdlib.h>
extern void v1 (signed char, signed int, signed short);
extern void (*v2) (signed char, signed int, signed short);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed char v5 (unsigned short, signed short);
extern signed char (*v6) (unsigned short, signed short);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
signed short v11 (unsigned int);
signed short (*v12) (unsigned int) = v11;
signed char v13 (void);
signed char (*v14) (void) = v13;
extern signed char v15 (unsigned char, signed char, unsigned int);
extern signed char (*v16) (unsigned char, signed char, unsigned int);
extern signed short v19 (signed char, unsigned char, signed short, unsigned int);
extern signed short (*v20) (signed char, unsigned char, signed short, unsigned int);
extern unsigned int v21 (unsigned char);
extern unsigned int (*v22) (unsigned char);
extern void v23 (unsigned short, unsigned short);
extern void (*v24) (unsigned short, unsigned short);
extern unsigned short v25 (unsigned int, signed int, unsigned char);
extern unsigned short (*v26) (unsigned int, signed int, unsigned char);
signed char v27 (unsigned int, unsigned short, unsigned char, unsigned short);
signed char (*v28) (unsigned int, unsigned short, unsigned char, unsigned short) = v27;
extern unsigned int v29 (signed char, unsigned char);
extern unsigned int (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v100 = 7;
unsigned int v99 = 4U;
signed char v98 = 2;

signed char v27 (unsigned int v101, unsigned short v102, unsigned char v103, unsigned short v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned short v107 = 4;
signed char v106 = 1;
signed char v105 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
signed char v110 = -4;
signed int v109 = -3;
unsigned int v108 = 1U;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v111;
unsigned int v112;
v111 = 3 + 1;
v112 = v21 (v111);
history[history_index++] = (int)v112;
}
break;
case 3: 
{
unsigned int v113;
signed int v114;
unsigned char v115;
unsigned short v116;
v113 = v108 - 6U;
v114 = -3 - v109;
v115 = 5 + 3;
v116 = v25 (v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

signed short v11 (unsigned int v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 6U;
unsigned short v119 = 5;
signed int v118 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
