#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned char, signed short);
extern unsigned short (*v2) (signed int, unsigned char, signed short);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern unsigned int v5 (unsigned int, unsigned int, signed short, signed int);
extern unsigned int (*v6) (unsigned int, unsigned int, signed short, signed int);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
void v9 (unsigned short, signed short, signed short);
void (*v10) (unsigned short, signed short, signed short) = v9;
extern void v11 (signed short);
extern void (*v12) (signed short);
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
extern signed short v15 (signed short);
extern signed short (*v16) (signed short);
extern signed char v17 (signed char, signed char);
extern signed char (*v18) (signed char, signed char);
void v19 (unsigned int, signed int, unsigned int, signed char);
void (*v20) (unsigned int, signed int, unsigned int, signed char) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed char v23 (void);
extern signed char (*v24) (void);
signed int v25 (unsigned int);
signed int (*v26) (unsigned int) = v25;
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v105 = 2U;
unsigned char v104 = 5;
signed short v103 = 2;

signed int v25 (unsigned int v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = 2;
signed char v108 = 0;
signed int v107 = -4;
trace++;
switch (trace)
{
case 1: 
{
signed char v110;
v110 = v23 ();
history[history_index++] = (int)v110;
}
break;
case 3: 
{
signed int v111;
unsigned char v112;
signed short v113;
unsigned short v114;
v111 = v109 - 0;
v112 = 1 - 0;
v113 = -2 - 0;
v114 = v1 (v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 15: 
return v109;
default: abort ();
}
}
}
}

void v19 (unsigned int v115, signed int v116, unsigned int v117, signed char v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = -4;
unsigned char v120 = 7;
unsigned short v119 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned short v122, signed short v123, signed short v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 3U;
signed int v126 = -1;
signed char v125 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
