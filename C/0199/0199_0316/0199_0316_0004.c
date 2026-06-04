#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed int v3 (unsigned char, signed short);
extern signed int (*v4) (unsigned char, signed short);
void v5 (unsigned short);
void (*v6) (unsigned short) = v5;
unsigned char v7 (unsigned int, unsigned short, unsigned short);
unsigned char (*v8) (unsigned int, unsigned short, unsigned short) = v7;
void v9 (signed short);
void (*v10) (signed short) = v9;
signed char v11 (signed short, unsigned char, signed short, unsigned char);
signed char (*v12) (signed short, unsigned char, signed short, unsigned char) = v11;
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed int v17 (signed char, signed char);
extern signed int (*v18) (signed char, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed int v21 (signed char);
extern signed int (*v22) (signed char);
extern unsigned short v23 (signed char);
extern unsigned short (*v24) (signed char);
unsigned int v25 (unsigned char, unsigned int);
unsigned int (*v26) (unsigned char, unsigned int) = v25;
extern signed char v27 (signed int, unsigned char, unsigned short, unsigned short);
extern signed char (*v28) (signed int, unsigned char, unsigned short, unsigned short);
extern unsigned short v29 (signed int, unsigned int);
extern unsigned short (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v102 = 3;
signed int v101 = 1;
signed int v100 = 1;

unsigned int v25 (unsigned char v103, unsigned int v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = 0;
unsigned short v106 = 2;
unsigned char v105 = 0;
trace++;
switch (trace)
{
case 5: 
return v104;
case 7: 
return 2U;
default: abort ();
}
}
}
}

signed char v11 (signed short v108, unsigned char v109, signed short v110, unsigned char v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 2U;
unsigned int v113 = 4U;
unsigned char v112 = 0;
trace++;
switch (trace)
{
case 3: 
{
v13 ();
}
break;
case 9: 
{
signed char v115;
signed int v116;
v115 = -4 + -4;
v116 = v21 (v115);
history[history_index++] = (int)v116;
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}

void v9 (signed short v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 1U;
unsigned short v119 = 5;
signed int v118 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v121, unsigned short v122, unsigned short v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed char v126 = 1;
unsigned int v125 = 3U;
signed short v124 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned short v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
signed int v130 = -3;
signed int v129 = 0;
unsigned char v128 = 2;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}
