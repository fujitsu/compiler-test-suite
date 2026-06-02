#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
signed char v3 (unsigned int);
signed char (*v4) (unsigned int) = v3;
unsigned int v5 (unsigned char);
unsigned int (*v6) (unsigned char) = v5;
extern unsigned char v7 (signed char);
extern unsigned char (*v8) (signed char);
unsigned int v9 (signed short, signed int, signed char);
unsigned int (*v10) (signed short, signed int, signed char) = v9;
extern void v11 (unsigned char, unsigned short, unsigned char, signed int);
extern void (*v12) (unsigned char, unsigned short, unsigned char, signed int);
unsigned int v13 (signed int, signed short, unsigned char);
unsigned int (*v14) (signed int, signed short, unsigned char) = v13;
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned char v25 (signed char, signed int, signed int, signed int);
extern unsigned char (*v26) (signed char, signed int, signed int, signed int);
extern signed short v27 (unsigned int, signed int, unsigned int);
extern signed short (*v28) (unsigned int, signed int, unsigned int);
unsigned short v29 (signed int, signed int);
unsigned short (*v30) (signed int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v99 = -3;
unsigned char v98 = 7;
unsigned char v97 = 1;

unsigned short v29 (signed int v100, signed int v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = 2;
unsigned short v103 = 2;
unsigned int v102 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed int v105, signed short v106, unsigned char v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed char v110 = 2;
signed int v109 = 1;
unsigned int v108 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed short v111, signed int v112, signed char v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 0U;
signed char v115 = -4;
signed int v114 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 0U;
signed char v119 = 0;
unsigned char v118 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = 0;
unsigned char v123 = 7;
unsigned short v122 = 5;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v125;
signed short v126;
v125 = v123 + 1;
v126 = v15 (v125);
history[history_index++] = (int)v126;
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}
