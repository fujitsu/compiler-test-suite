#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned int, unsigned char);
extern signed int (*v2) (unsigned char, unsigned int, unsigned char);
extern unsigned int v3 (unsigned char, signed int, unsigned int);
extern unsigned int (*v4) (unsigned char, signed int, unsigned int);
extern unsigned short v5 (unsigned char, unsigned char);
extern unsigned short (*v6) (unsigned char, unsigned char);
signed int v7 (signed int);
signed int (*v8) (signed int) = v7;
extern unsigned char v9 (unsigned char);
extern unsigned char (*v10) (unsigned char);
signed int v11 (signed char, signed char, signed int);
signed int (*v12) (signed char, signed char, signed int) = v11;
extern void v13 (signed char, unsigned short, signed char);
extern void (*v14) (signed char, unsigned short, signed char);
extern signed char v15 (unsigned short, signed char);
extern signed char (*v16) (unsigned short, signed char);
extern void v17 (unsigned int, signed short, signed int);
extern void (*v18) (unsigned int, signed short, signed int);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern void v21 (signed short, signed char, unsigned int, signed short);
extern void (*v22) (signed short, signed char, unsigned int, signed short);
extern signed int v23 (signed short, signed char, unsigned char);
extern signed int (*v24) (signed short, signed char, unsigned char);
static signed short v25 (void);
static signed short (*v26) (void) = v25;
signed short v27 (unsigned int, unsigned char);
signed short (*v28) (unsigned int, unsigned char) = v27;
extern signed int v29 (unsigned short, unsigned int);
extern signed int (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v100 = 7;
signed short v99 = 2;
unsigned short v98 = 5;

signed short v27 (unsigned int v101, unsigned char v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = 2;
signed int v104 = -3;
unsigned int v103 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v25 (void)
{
{
for (;;) {
signed short v108 = 0;
signed short v107 = 3;
signed short v106 = -4;
trace++;
switch (trace)
{
case 10: 
return 3;
default: abort ();
}
}
}
}

signed int v11 (signed char v109, signed char v110, signed int v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 3U;
signed short v113 = -3;
signed int v112 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed int v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = 2;
signed short v117 = 1;
signed int v116 = -2;
trace++;
switch (trace)
{
case 9: 
{
signed short v119;
v119 = v25 ();
history[history_index++] = (int)v119;
}
break;
case 11: 
return v118;
default: abort ();
}
}
}
}
