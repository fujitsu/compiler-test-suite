#include <stdlib.h>
unsigned int v1 (unsigned short);
unsigned int (*v2) (unsigned short) = v1;
void v3 (void);
void (*v4) (void) = v3;
extern unsigned int v5 (unsigned short, unsigned short, unsigned char);
extern unsigned int (*v6) (unsigned short, unsigned short, unsigned char);
static unsigned int v7 (void);
static unsigned int (*v8) (void) = v7;
extern void v9 (unsigned int, unsigned int, unsigned short);
extern void (*v10) (unsigned int, unsigned int, unsigned short);
extern signed short v11 (unsigned int, unsigned int, unsigned short);
extern signed short (*v12) (unsigned int, unsigned int, unsigned short);
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
extern signed int v17 (unsigned short, unsigned char);
extern signed int (*v18) (unsigned short, unsigned char);
extern unsigned int v19 (unsigned short, unsigned char, unsigned int, signed short);
extern unsigned int (*v20) (unsigned short, unsigned char, unsigned int, signed short);
extern signed short v21 (unsigned int, unsigned int, unsigned short, unsigned int);
extern signed short (*v22) (unsigned int, unsigned int, unsigned short, unsigned int);
extern signed char v23 (signed int, signed char, signed char, signed char);
extern signed char (*v24) (signed int, signed char, signed char, signed char);
signed short v25 (signed char, unsigned int, signed int);
signed short (*v26) (signed char, unsigned int, signed int) = v25;
unsigned short v27 (unsigned char, signed short, unsigned char, unsigned short);
unsigned short (*v28) (unsigned char, signed short, unsigned char, unsigned short) = v27;
extern unsigned short v29 (unsigned char, signed int, unsigned char);
extern unsigned short (*v30) (unsigned char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v94 = 3U;
signed int v93 = 0;
unsigned short v92 = 1;

unsigned short v27 (unsigned char v95, signed short v96, unsigned char v97, unsigned short v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = 1;
unsigned short v100 = 2;
signed char v99 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (signed char v102, unsigned int v103, signed int v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = 1;
signed int v106 = 0;
signed int v105 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v7 (void)
{
{
for (;;) {
unsigned char v110 = 4;
unsigned char v109 = 7;
unsigned short v108 = 4;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v111;
signed int v112;
unsigned char v113;
v111 = v108 + 7;
v112 = -2 + 3;
v113 = v13 (v111, v112);
history[history_index++] = (int)v113;
}
break;
case 13: 
return 4U;
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
signed char v116 = -3;
signed char v115 = 1;
signed int v114 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed int v120 = -4;
signed char v119 = -3;
unsigned int v118 = 7U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v121;
v121 = v7 ();
history[history_index++] = (int)v121;
}
break;
case 14: 
return v118;
default: abort ();
}
}
}
}
