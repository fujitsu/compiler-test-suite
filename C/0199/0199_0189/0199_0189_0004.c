#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed int, signed short);
extern unsigned int (*v2) (unsigned int, signed int, signed short);
extern signed short v3 (signed char);
extern signed short (*v4) (signed char);
unsigned short v5 (signed short, signed char, signed char);
unsigned short (*v6) (signed short, signed char, signed char) = v5;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned int v11 (unsigned int, signed short);
extern unsigned int (*v12) (unsigned int, signed short);
extern unsigned short v13 (unsigned int, unsigned int);
extern unsigned short (*v14) (unsigned int, unsigned int);
signed char v15 (signed int);
signed char (*v16) (signed int) = v15;
signed char v17 (unsigned short, signed char);
signed char (*v18) (unsigned short, signed char) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned char v23 (signed short, signed int);
extern unsigned char (*v24) (signed short, signed int);
void v25 (void);
void (*v26) (void) = v25;
extern unsigned char v27 (signed int, unsigned int, signed short);
extern unsigned char (*v28) (signed int, unsigned int, signed short);
extern unsigned short v29 (unsigned short, signed int);
extern unsigned short (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v104 = 3;
unsigned char v103 = 3;
signed int v102 = 2;

void v25 (void)
{
{
for (;;) {
signed int v107 = 2;
unsigned int v106 = 6U;
unsigned int v105 = 4U;
trace++;
switch (trace)
{
case 10: 
{
signed int v108;
unsigned int v109;
signed short v110;
unsigned char v111;
v108 = v107 - -3;
v109 = 1U + v105;
v110 = -4 + 3;
v111 = v27 (v108, v109, v110);
history[history_index++] = (int)v111;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed char v17 (unsigned short v112, signed char v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed int v116 = -2;
unsigned int v115 = 1U;
signed int v114 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed int v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 2;
unsigned char v119 = 6;
unsigned short v118 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed short v121, signed char v122, signed char v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 6;
unsigned char v125 = 7;
signed short v124 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
