#include <stdlib.h>
extern unsigned char v5 (unsigned short, signed char, unsigned int);
extern unsigned char (*v6) (unsigned short, signed char, unsigned int);
unsigned char v7 (unsigned short, signed short, unsigned short);
unsigned char (*v8) (unsigned short, signed short, unsigned short) = v7;
extern unsigned char v9 (signed short, signed int);
extern unsigned char (*v10) (signed short, signed int);
unsigned char v11 (unsigned short);
unsigned char (*v12) (unsigned short) = v11;
signed char v13 (signed short, unsigned char);
signed char (*v14) (signed short, unsigned char) = v13;
extern unsigned short v15 (signed short, signed short, signed char);
extern unsigned short (*v16) (signed short, signed short, signed char);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern unsigned short v21 (unsigned char, unsigned short, unsigned char, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned short, unsigned char, unsigned int);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
signed short v27 (unsigned char, unsigned int);
signed short (*v28) (unsigned char, unsigned int) = v27;
signed int v29 (unsigned char, signed char);
signed int (*v30) (unsigned char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v103 = 6;
unsigned int v102 = 5U;
unsigned char v101 = 5;

signed int v29 (unsigned char v104, signed char v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 1;
unsigned int v107 = 2U;
unsigned char v106 = 0;
trace++;
switch (trace)
{
case 4: 
return -1;
case 6: 
return -4;
case 8: 
return 2;
case 10: 
return 1;
default: abort ();
}
}
}
}

signed short v27 (unsigned char v109, unsigned int v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed int v113 = -1;
unsigned char v112 = 5;
unsigned short v111 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed short v114, unsigned char v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 5;
unsigned int v117 = 0U;
unsigned char v116 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = 3;
unsigned char v121 = 1;
signed int v120 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v123, signed short v124, unsigned short v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned int v128 = 2U;
unsigned int v127 = 6U;
signed int v126 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
