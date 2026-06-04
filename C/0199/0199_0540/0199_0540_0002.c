#include <stdlib.h>
extern signed char v3 (unsigned short, signed char, unsigned char);
extern signed char (*v4) (unsigned short, signed char, unsigned char);
signed char v5 (unsigned short, signed char, unsigned int, signed short);
signed char (*v6) (unsigned short, signed char, unsigned int, signed short) = v5;
signed short v7 (signed short, unsigned short, signed int);
signed short (*v8) (signed short, unsigned short, signed int) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (signed char);
extern signed short (*v12) (signed char);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern signed char v15 (signed int, signed short, signed char, signed int);
extern signed char (*v16) (signed int, signed short, signed char, signed int);
extern signed int v19 (signed short, unsigned short);
extern signed int (*v20) (signed short, unsigned short);
unsigned int v21 (signed char, signed int, unsigned short);
unsigned int (*v22) (signed char, signed int, unsigned short) = v21;
extern unsigned char v23 (unsigned char, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned char, unsigned char, unsigned char);
extern void v25 (signed char, signed short, unsigned short);
extern void (*v26) (signed char, signed short, unsigned short);
extern void v27 (signed char, unsigned short, unsigned char, unsigned int);
extern void (*v28) (signed char, unsigned short, unsigned char, unsigned int);
extern unsigned short v29 (unsigned char, unsigned char, signed short, unsigned int);
extern unsigned short (*v30) (unsigned char, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v100 = 7;
unsigned int v99 = 6U;
signed char v98 = -4;

unsigned int v21 (signed char v101, signed int v102, unsigned short v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = -1;
signed char v105 = -1;
signed char v104 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v107, unsigned short v108, signed int v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed int v112 = 0;
signed char v111 = 3;
unsigned char v110 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned short v113, signed char v114, unsigned int v115, signed short v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed char v119 = 1;
unsigned short v118 = 3;
signed char v117 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed char v120;
v120 = v9 ();
history[history_index++] = (int)v120;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}
