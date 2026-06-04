#include <stdlib.h>
extern signed char v3 (signed int);
extern signed char (*v4) (signed int);
extern unsigned int v5 (unsigned short, signed char);
extern unsigned int (*v6) (unsigned short, signed char);
signed short v9 (unsigned int);
signed short (*v10) (unsigned int) = v9;
extern unsigned short v11 (signed int);
extern unsigned short (*v12) (signed int);
extern signed short v13 (unsigned int, signed short, unsigned short, unsigned short);
extern signed short (*v14) (unsigned int, signed short, unsigned short, unsigned short);
extern unsigned char v15 (unsigned int, unsigned char, signed int);
extern unsigned char (*v16) (unsigned int, unsigned char, signed int);
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (signed short, signed char);
extern signed short (*v20) (signed short, signed char);
unsigned int v21 (unsigned int, signed short, signed short);
unsigned int (*v22) (unsigned int, signed short, signed short) = v21;
unsigned char v23 (signed char, signed int);
unsigned char (*v24) (signed char, signed int) = v23;
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
unsigned int v27 (signed char, unsigned char, unsigned int, unsigned int);
unsigned int (*v28) (signed char, unsigned char, unsigned int, unsigned int) = v27;
signed short v29 (signed short, signed char);
signed short (*v30) (signed short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v111 = 0;
unsigned short v110 = 4;
signed short v109 = 1;

signed short v29 (signed short v112, signed char v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -1;
unsigned int v115 = 2U;
signed short v114 = 1;
trace++;
switch (trace)
{
case 2: 
return v114;
case 4: 
return v112;
default: abort ();
}
}
}
}

unsigned int v27 (signed char v117, unsigned char v118, unsigned int v119, unsigned int v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 7;
signed char v122 = 0;
unsigned int v121 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed char v124, signed int v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned int v128 = 2U;
unsigned int v127 = 3U;
signed char v126 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (unsigned int v129, signed short v130, signed short v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned short v134 = 0;
signed short v133 = -3;
unsigned int v132 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned int v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 0;
signed char v137 = 0;
signed char v136 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
