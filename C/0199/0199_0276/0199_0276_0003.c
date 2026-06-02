#include <stdlib.h>
extern void v1 (unsigned short, signed char);
extern void (*v2) (unsigned short, signed char);
signed int v3 (unsigned char, signed short, unsigned short);
signed int (*v4) (unsigned char, signed short, unsigned short) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (unsigned int, unsigned char);
extern unsigned int (*v10) (unsigned int, unsigned char);
extern signed short v11 (unsigned int, signed int, signed int, signed short);
extern signed short (*v12) (unsigned int, signed int, signed int, signed short);
extern unsigned int v13 (signed char, signed short, signed char, signed int);
extern unsigned int (*v14) (signed char, signed short, signed char, signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
unsigned int v17 (signed int, unsigned short, signed char);
unsigned int (*v18) (signed int, unsigned short, signed char) = v17;
static unsigned int v19 (signed char, unsigned char, unsigned char);
static unsigned int (*v20) (signed char, unsigned char, unsigned char) = v19;
extern unsigned char v21 (signed short, signed char, signed short, unsigned short);
extern unsigned char (*v22) (signed short, signed char, signed short, unsigned short);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
signed int v25 (signed int, signed int);
signed int (*v26) (signed int, signed int) = v25;
extern void v27 (void);
extern void (*v28) (void);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v97 = 1U;
signed char v96 = 2;
signed short v95 = -4;

unsigned int v29 (void)
{
{
for (;;) {
signed char v100 = -2;
unsigned short v99 = 3;
unsigned int v98 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (signed int v101, signed int v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = 1;
unsigned char v104 = 2;
signed char v103 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v19 (signed char v106, unsigned char v107, unsigned char v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = -2;
signed char v110 = -3;
signed int v109 = -3;
trace++;
switch (trace)
{
case 11: 
return 1U;
default: abort ();
}
}
}
}

unsigned int v17 (signed int v112, unsigned short v113, signed char v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 1;
signed int v116 = -2;
unsigned char v115 = 3;
trace++;
switch (trace)
{
case 3: 
return 3U;
case 10: 
{
signed char v118;
unsigned char v119;
unsigned char v120;
unsigned int v121;
v118 = v114 - 2;
v119 = 2 + v115;
v120 = 1 + 7;
v121 = v19 (v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 12: 
return 0U;
default: abort ();
}
}
}
}

signed int v3 (unsigned char v122, signed short v123, unsigned short v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 0;
unsigned char v126 = 0;
unsigned int v125 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
