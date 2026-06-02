#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char, signed char);
extern unsigned char (*v2) (unsigned short, signed char, signed char);
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
void v5 (signed int, signed int, unsigned short, signed int);
void (*v6) (signed int, signed int, unsigned short, signed int) = v5;
extern unsigned short v7 (signed int, signed int);
extern unsigned short (*v8) (signed int, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed short v11 (signed int, signed short, unsigned short);
extern signed short (*v12) (signed int, signed short, unsigned short);
signed char v13 (unsigned short, unsigned short, signed char, unsigned short);
signed char (*v14) (unsigned short, unsigned short, signed char, unsigned short) = v13;
extern unsigned char v15 (signed int);
extern unsigned char (*v16) (signed int);
extern signed short v17 (void);
extern signed short (*v18) (void);
unsigned int v19 (signed char, unsigned int);
unsigned int (*v20) (signed char, unsigned int) = v19;
extern signed int v21 (signed int, unsigned char, signed int);
extern signed int (*v22) (signed int, unsigned char, signed int);
unsigned short v25 (unsigned short, signed int, unsigned char, signed int);
unsigned short (*v26) (unsigned short, signed int, unsigned char, signed int) = v25;
extern unsigned short v27 (unsigned char, signed char, signed short, signed short);
extern unsigned short (*v28) (unsigned char, signed char, signed short, signed short);
extern unsigned char v29 (unsigned short, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v101 = 4;
signed short v100 = 3;
signed int v99 = -3;

unsigned short v25 (unsigned short v102, signed int v103, unsigned char v104, signed int v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = -2;
signed int v107 = 2;
signed int v106 = 1;
trace++;
switch (trace)
{
case 1: 
return 7;
default: abort ();
}
}
}
}

unsigned int v19 (signed char v109, unsigned int v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = 3;
unsigned char v112 = 2;
unsigned char v111 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned short v114, unsigned short v115, signed char v116, unsigned short v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 3;
signed int v119 = 0;
unsigned char v118 = 1;
trace++;
switch (trace)
{
case 3: 
return -2;
case 10: 
return -3;
default: abort ();
}
}
}
}

void v5 (signed int v121, signed int v122, unsigned short v123, signed int v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 6;
unsigned short v126 = 7;
signed char v125 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
