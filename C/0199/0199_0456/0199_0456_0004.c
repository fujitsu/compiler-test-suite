#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed char v7 (unsigned char, unsigned int, unsigned char);
extern signed char (*v8) (unsigned char, unsigned int, unsigned char);
extern unsigned short v9 (unsigned int, unsigned char, signed short);
extern unsigned short (*v10) (unsigned int, unsigned char, signed short);
extern unsigned char v11 (signed char);
extern unsigned char (*v12) (signed char);
void v13 (signed int);
void (*v14) (signed int) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed int v17 (unsigned int, signed int);
extern signed int (*v18) (unsigned int, signed int);
extern unsigned short v19 (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v20) (signed short, unsigned char, unsigned short, unsigned short);
signed int v21 (signed short, unsigned int, unsigned char, signed int);
signed int (*v22) (signed short, unsigned int, unsigned char, signed int) = v21;
signed int v23 (signed int, unsigned char, signed short, signed int);
signed int (*v24) (signed int, unsigned char, signed short, signed int) = v23;
unsigned char v25 (signed short, signed short, signed int);
unsigned char (*v26) (signed short, signed short, signed int) = v25;
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v109 = -2;
signed short v108 = 2;
unsigned short v107 = 1;

unsigned char v25 (signed short v110, signed short v111, signed int v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 0;
signed char v114 = -3;
signed char v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed int v116, unsigned char v117, signed short v118, signed int v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 5;
unsigned short v121 = 0;
unsigned short v120 = 5;
trace++;
switch (trace)
{
case 2: 
return v119;
case 4: 
return 1;
case 6: 
return v116;
default: abort ();
}
}
}
}

signed int v21 (signed short v123, unsigned int v124, unsigned char v125, signed int v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 0;
unsigned char v128 = 4;
signed char v127 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed int v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
signed short v133 = -3;
signed int v132 = 1;
signed short v131 = 3;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed int v136 = 2;
unsigned char v135 = 5;
unsigned char v134 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v137;
v137 = v15 ();
history[history_index++] = (int)v137;
}
break;
case 8: 
{
signed short v138;
v138 = v3 ();
history[history_index++] = (int)v138;
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
