#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern signed char v3 (unsigned int, signed short);
extern signed char (*v4) (unsigned int, signed short);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (unsigned char, signed int);
extern signed int (*v8) (unsigned char, signed int);
extern void v9 (void);
extern void (*v10) (void);
signed char v11 (unsigned short, unsigned int, signed short);
signed char (*v12) (unsigned short, unsigned int, signed short) = v11;
void v13 (signed short, signed int, signed int, signed char);
void (*v14) (signed short, signed int, signed int, signed char) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed char v17 (signed short, signed short, signed int, signed int);
extern signed char (*v18) (signed short, signed short, signed int, signed int);
extern unsigned char v19 (unsigned short, unsigned char, unsigned int, signed char);
extern unsigned char (*v20) (unsigned short, unsigned char, unsigned int, signed char);
static signed short v21 (signed int, unsigned int);
static signed short (*v22) (signed int, unsigned int) = v21;
extern unsigned short v23 (signed int);
extern unsigned short (*v24) (signed int);
extern signed char v25 (signed char, signed short, unsigned char, signed int);
extern signed char (*v26) (signed char, signed short, unsigned char, signed int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v111 = -1;
signed char v110 = 3;
signed short v109 = -1;

static signed short v21 (signed int v112, unsigned int v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 6U;
signed int v115 = 1;
signed int v114 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed int v117;
unsigned short v118;
v117 = v114 - -1;
v118 = v23 (v117);
history[history_index++] = (int)v118;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

void v13 (signed short v119, signed int v120, signed int v121, signed char v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed char v125 = 1;
signed char v124 = -1;
unsigned int v123 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned short v126, unsigned int v127, signed short v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = -1;
signed short v130 = 3;
unsigned short v129 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed char v134 = 1;
unsigned short v133 = 3;
signed short v132 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v135;
unsigned int v136;
signed short v137;
v135 = -1 - 1;
v136 = 7U - 5U;
v137 = v21 (v135, v136);
history[history_index++] = (int)v137;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
