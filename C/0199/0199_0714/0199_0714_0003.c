#include <stdlib.h>
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
extern signed short v5 (unsigned char, unsigned char, signed char);
extern signed short (*v6) (unsigned char, unsigned char, signed char);
unsigned int v7 (signed char);
unsigned int (*v8) (signed char) = v7;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v15 (signed short, signed char, unsigned int, signed int);
extern void (*v16) (signed short, signed char, unsigned int, signed int);
extern signed short v17 (signed char);
extern signed short (*v18) (signed char);
unsigned short v19 (signed short, signed short);
unsigned short (*v20) (signed short, signed short) = v19;
extern unsigned short v21 (signed int, unsigned short, signed char, unsigned int);
extern unsigned short (*v22) (signed int, unsigned short, signed char, unsigned int);
extern signed char v23 (signed short, unsigned short);
extern signed char (*v24) (signed short, unsigned short);
signed char v25 (unsigned char, signed int, signed short, unsigned int);
signed char (*v26) (unsigned char, signed int, signed short, unsigned int) = v25;
signed int v27 (unsigned char);
signed int (*v28) (unsigned char) = v27;
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v114 = -2;
signed int v113 = 1;
unsigned int v112 = 0U;

signed int v27 (unsigned char v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 2;
signed char v117 = 2;
unsigned int v116 = 6U;
trace++;
switch (trace)
{
case 2: 
return 1;
case 8: 
return 1;
default: abort ();
}
}
}
}

signed char v25 (unsigned char v119, signed int v120, signed short v121, unsigned int v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 3;
unsigned char v124 = 1;
unsigned short v123 = 3;
trace++;
switch (trace)
{
case 4: 
return 3;
case 10: 
return -4;
default: abort ();
}
}
}
}

unsigned short v19 (signed short v126, signed short v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = -4;
signed short v129 = 0;
signed char v128 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed char v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned char v134 = 2;
unsigned char v133 = 7;
unsigned int v132 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
