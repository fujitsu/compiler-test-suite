#include <stdlib.h>
extern signed char v1 (unsigned char);
extern signed char (*v2) (unsigned char);
extern unsigned short v3 (signed char, signed short, signed int, unsigned short);
extern unsigned short (*v4) (signed char, signed short, signed int, unsigned short);
signed char v5 (unsigned int);
signed char (*v6) (unsigned int) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
unsigned int v11 (unsigned short);
unsigned int (*v12) (unsigned short) = v11;
extern unsigned int v15 (signed short);
extern unsigned int (*v16) (signed short);
extern signed short v17 (signed short, signed int, unsigned int, unsigned char);
extern signed short (*v18) (signed short, signed int, unsigned int, unsigned char);
signed int v19 (signed int, unsigned int, signed int);
signed int (*v20) (signed int, unsigned int, signed int) = v19;
extern signed short v21 (unsigned short);
extern signed short (*v22) (unsigned short);
signed int v23 (unsigned char, unsigned int, signed short, unsigned short);
signed int (*v24) (unsigned char, unsigned int, signed short, unsigned short) = v23;
extern signed char v25 (unsigned char, unsigned char, signed short);
extern signed char (*v26) (unsigned char, unsigned char, signed short);
extern unsigned char v27 (unsigned short, unsigned int);
extern unsigned char (*v28) (unsigned short, unsigned int);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v104 = 2;
signed int v103 = 3;
unsigned int v102 = 2U;

signed int v23 (unsigned char v105, unsigned int v106, signed short v107, unsigned short v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = 0;
unsigned char v110 = 7;
unsigned short v109 = 7;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v112;
unsigned int v113;
unsigned char v114;
v112 = v108 + v109;
v113 = v106 + 1U;
v114 = v27 (v112, v113);
history[history_index++] = (int)v114;
}
break;
case 7: 
return -3;
default: abort ();
}
}
}
}

signed int v19 (signed int v115, unsigned int v116, signed int v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 1U;
unsigned int v119 = 5U;
signed int v118 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = -4;
unsigned int v123 = 5U;
unsigned int v122 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned int v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = 2;
unsigned short v127 = 1;
signed int v126 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
