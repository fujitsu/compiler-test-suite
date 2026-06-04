#include <stdlib.h>
extern signed char v1 (signed short, unsigned short, unsigned int);
extern signed char (*v2) (signed short, unsigned short, unsigned int);
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern signed int v5 (unsigned int, unsigned int, unsigned int);
extern signed int (*v6) (unsigned int, unsigned int, unsigned int);
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
extern signed char v9 (unsigned char, unsigned int);
extern signed char (*v10) (unsigned char, unsigned int);
signed int v11 (signed char, unsigned char, signed short);
signed int (*v12) (signed char, unsigned char, signed short) = v11;
extern signed short v13 (signed short, signed int, unsigned short, unsigned char);
extern signed short (*v14) (signed short, signed int, unsigned short, unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (unsigned char);
extern signed short (*v18) (unsigned char);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern signed short v21 (signed int, unsigned int, signed short);
extern signed short (*v22) (signed int, unsigned int, signed short);
void v23 (signed char, signed short);
void (*v24) (signed char, signed short) = v23;
unsigned int v25 (signed short, unsigned int, signed int, signed short);
unsigned int (*v26) (signed short, unsigned int, signed int, signed short) = v25;
signed short v27 (unsigned int, unsigned int, unsigned short);
signed short (*v28) (unsigned int, unsigned int, unsigned short) = v27;
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v100 = 0;
unsigned int v99 = 1U;
signed char v98 = 0;

signed int v29 (void)
{
{
for (;;) {
unsigned short v103 = 7;
signed char v102 = -1;
signed short v101 = 1;
trace++;
switch (trace)
{
case 4: 
return -2;
case 10: 
return 3;
default: abort ();
}
}
}
}

signed short v27 (unsigned int v104, unsigned int v105, unsigned short v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 1;
signed char v108 = -4;
signed short v107 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (signed short v110, unsigned int v111, signed int v112, signed short v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned short v116 = 0;
unsigned short v115 = 5;
signed int v114 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed char v117, signed short v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned short v121 = 6;
unsigned short v120 = 2;
unsigned char v119 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed char v122, unsigned char v123, signed short v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 4;
unsigned short v126 = 1;
unsigned short v125 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
