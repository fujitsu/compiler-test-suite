#include <stdlib.h>
signed short v3 (unsigned short, unsigned char, signed char);
signed short (*v4) (unsigned short, unsigned char, signed char) = v3;
extern signed int v5 (signed int);
extern signed int (*v6) (signed int);
extern unsigned char v7 (signed int, signed int, unsigned int, unsigned char);
extern unsigned char (*v8) (signed int, signed int, unsigned int, unsigned char);
extern unsigned char v9 (unsigned char, unsigned char, unsigned int);
extern unsigned char (*v10) (unsigned char, unsigned char, unsigned int);
extern signed int v11 (signed short, signed int);
extern signed int (*v12) (signed short, signed int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
extern unsigned short v17 (signed short, unsigned int, unsigned char);
extern unsigned short (*v18) (signed short, unsigned int, unsigned char);
extern unsigned int v19 (signed int, signed int, unsigned short, unsigned char);
extern unsigned int (*v20) (signed int, signed int, unsigned short, unsigned char);
signed int v21 (signed short);
signed int (*v22) (signed short) = v21;
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
signed char v25 (signed short, unsigned char);
signed char (*v26) (signed short, unsigned char) = v25;
void v27 (unsigned short, unsigned int);
void (*v28) (unsigned short, unsigned int) = v27;
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v98 = 1;
signed char v97 = 3;
unsigned int v96 = 7U;

void v27 (unsigned short v99, unsigned int v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned int v103 = 4U;
signed int v102 = -4;
unsigned short v101 = 1;
trace++;
switch (trace)
{
case 1: 
return;
case 5: 
return;
default: abort ();
}
}
}
}

signed char v25 (signed short v104, unsigned char v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = -4;
unsigned char v107 = 5;
signed short v106 = -2;
trace++;
switch (trace)
{
case 7: 
{
signed char v109;
signed char v110;
v109 = v108 - -3;
v110 = v29 (v109);
history[history_index++] = (int)v110;
}
break;
case 9: 
return -2;
default: abort ();
}
}
}
}

signed int v21 (signed short v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 1;
signed char v113 = -2;
signed char v112 = 1;
trace++;
switch (trace)
{
case 3: 
return 1;
case 11: 
return -1;
default: abort ();
}
}
}
}

signed short v3 (unsigned short v115, unsigned char v116, signed char v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 2;
unsigned short v119 = 5;
signed char v118 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
