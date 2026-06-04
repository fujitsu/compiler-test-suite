#include <stdlib.h>
signed short v1 (unsigned short);
signed short (*v2) (unsigned short) = v1;
extern void v3 (unsigned char, signed char, signed char);
extern void (*v4) (unsigned char, signed char, signed char);
void v5 (void);
void (*v6) (void) = v5;
extern unsigned int v7 (unsigned int, unsigned short);
extern unsigned int (*v8) (unsigned int, unsigned short);
extern signed char v9 (unsigned int, signed short, unsigned char);
extern signed char (*v10) (unsigned int, signed short, unsigned char);
extern void v11 (unsigned int, signed char, signed char, signed short);
extern void (*v12) (unsigned int, signed char, signed char, signed short);
extern unsigned char v13 (unsigned char, signed int, unsigned short, signed char);
extern unsigned char (*v14) (unsigned char, signed int, unsigned short, signed char);
extern unsigned char v15 (signed int, signed char, signed char, signed char);
extern unsigned char (*v16) (signed int, signed char, signed char, signed char);
signed int v17 (signed char);
signed int (*v18) (signed char) = v17;
extern signed char v19 (signed short, unsigned int);
extern signed char (*v20) (signed short, unsigned int);
extern signed short v21 (unsigned int, signed char, unsigned int, unsigned short);
extern signed short (*v22) (unsigned int, signed char, unsigned int, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (signed int, unsigned int, signed char);
extern void (*v26) (signed int, unsigned int, signed char);
extern signed int v27 (void);
extern signed int (*v28) (void);
unsigned char v29 (unsigned int, signed int);
unsigned char (*v30) (unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v100 = 6;
signed short v99 = 0;
signed char v98 = -4;

unsigned char v29 (unsigned int v101, signed int v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 3U;
unsigned int v104 = 1U;
unsigned int v103 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed char v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = -4;
unsigned short v108 = 2;
unsigned char v107 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
unsigned char v112 = 6;
unsigned char v111 = 3;
signed short v110 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned short v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 1;
signed int v115 = 1;
signed char v114 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v117;
signed char v118;
signed char v119;
v117 = 2 - v116;
v118 = -1 + v114;
v119 = v114 - -3;
v3 (v117, v118, v119);
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
