#include <stdlib.h>
extern signed int v3 (unsigned short, signed int, signed short);
extern signed int (*v4) (unsigned short, signed int, signed short);
extern signed short v5 (unsigned int, signed int, unsigned short);
extern signed short (*v6) (unsigned int, signed int, unsigned short);
extern unsigned int v7 (unsigned short, unsigned short, signed int, signed short);
extern unsigned int (*v8) (unsigned short, unsigned short, signed int, signed short);
unsigned int v11 (signed short, signed char, signed char, unsigned int);
unsigned int (*v12) (signed short, signed char, signed char, unsigned int) = v11;
extern unsigned char v13 (signed short, signed int);
extern unsigned char (*v14) (signed short, signed int);
unsigned char v15 (unsigned char, unsigned short, unsigned char, signed char);
unsigned char (*v16) (unsigned char, unsigned short, unsigned char, signed char) = v15;
extern unsigned int v17 (signed short, signed char, unsigned char);
extern unsigned int (*v18) (signed short, signed char, unsigned char);
extern signed int v19 (unsigned int, signed char);
extern signed int (*v20) (unsigned int, signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned char v23 (signed char, unsigned int);
extern unsigned char (*v24) (signed char, unsigned int);
signed short v25 (unsigned int, unsigned short, unsigned int);
signed short (*v26) (unsigned int, unsigned short, unsigned int) = v25;
extern unsigned char v27 (unsigned char, unsigned int);
extern unsigned char (*v28) (unsigned char, unsigned int);
extern void v29 (signed int);
extern void (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v104 = 5;
signed char v103 = 2;
signed char v102 = 0;

signed short v25 (unsigned int v105, unsigned short v106, unsigned int v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 3;
unsigned int v109 = 0U;
unsigned short v108 = 7;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v111;
unsigned int v112;
unsigned char v113;
v111 = 1 - 7;
v112 = v107 + 2U;
v113 = v27 (v111, v112);
history[history_index++] = (int)v113;
}
break;
case 9: 
return -4;
default: abort ();
}
}
}
}

unsigned char v15 (unsigned char v114, unsigned short v115, unsigned char v116, signed char v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 3;
signed int v119 = 2;
signed short v118 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed short v121, signed char v122, signed char v123, unsigned int v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = 1;
signed short v126 = -4;
unsigned short v125 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
