#include <stdlib.h>
void v1 (unsigned int);
void (*v2) (unsigned int) = v1;
extern signed short v3 (unsigned short, unsigned short, signed short);
extern signed short (*v4) (unsigned short, unsigned short, signed short);
extern void v5 (void);
extern void (*v6) (void);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
signed int v9 (unsigned char, unsigned short);
signed int (*v10) (unsigned char, unsigned short) = v9;
unsigned short v11 (signed char, signed char, signed char, signed int);
unsigned short (*v12) (signed char, signed char, signed char, signed int) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed int v15 (unsigned short, unsigned int, unsigned char, signed short);
extern signed int (*v16) (unsigned short, unsigned int, unsigned char, signed short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (unsigned int, signed int, unsigned short);
extern signed char (*v20) (unsigned int, signed int, unsigned short);
extern unsigned int v21 (signed char);
extern unsigned int (*v22) (signed char);
extern void v23 (signed short, signed char);
extern void (*v24) (signed short, signed char);
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
extern void v29 (unsigned int, unsigned short, signed char, unsigned short);
extern void (*v30) (unsigned int, unsigned short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v99 = 1;
signed short v98 = -1;
unsigned short v97 = 2;

unsigned short v11 (signed char v100, signed char v101, signed char v102, signed int v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = 0;
unsigned short v105 = 6;
signed char v104 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned char v107, unsigned short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 0U;
unsigned char v110 = 4;
signed char v109 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
signed char v114 = -4;
unsigned int v113 = 5U;
signed int v112 = 2;
trace++;
switch (trace)
{
case 5: 
return 4;
case 7: 
return 0;
case 9: 
return 3;
default: abort ();
}
}
}
}

void v1 (unsigned int v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 6U;
signed short v117 = -2;
unsigned char v116 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v119;
unsigned short v120;
signed short v121;
signed short v122;
v119 = 3 - 5;
v120 = 7 - 0;
v121 = v117 - -1;
v122 = v3 (v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
