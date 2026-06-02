#include <stdlib.h>
extern unsigned char v1 (signed int, signed int, unsigned int, unsigned int);
extern unsigned char (*v2) (signed int, signed int, unsigned int, unsigned int);
unsigned short v3 (unsigned char, signed char, unsigned int, unsigned char);
unsigned short (*v4) (unsigned char, signed char, unsigned int, unsigned char) = v3;
extern unsigned int v5 (unsigned short, unsigned int);
extern unsigned int (*v6) (unsigned short, unsigned int);
extern signed short v7 (signed char, unsigned int, signed char, unsigned int);
extern signed short (*v8) (signed char, unsigned int, signed char, unsigned int);
extern void v9 (signed char, unsigned char);
extern void (*v10) (signed char, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (signed int, signed short, signed short);
extern unsigned char (*v14) (signed int, signed short, signed short);
extern signed short v17 (signed short, signed char, unsigned int);
extern signed short (*v18) (signed short, signed char, unsigned int);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern signed char v21 (signed char, signed char);
extern signed char (*v22) (signed char, signed char);
void v23 (void);
void (*v24) (void) = v23;
signed int v25 (signed char, signed char, signed int, signed int);
signed int (*v26) (signed char, signed char, signed int, signed int) = v25;
extern unsigned int v29 (signed char, unsigned short);
extern unsigned int (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v101 = -2;
signed short v100 = 3;
unsigned short v99 = 5;

signed int v25 (signed char v102, signed char v103, signed int v104, signed int v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 7;
unsigned short v107 = 7;
unsigned char v106 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (void)
{
{
for (;;) {
signed short v111 = -4;
unsigned char v110 = 4;
signed int v109 = -3;
trace++;
switch (trace)
{
case 6: 
{
signed char v112;
unsigned char v113;
v112 = -4 + 1;
v113 = 5 - v110;
v9 (v112, v113);
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v114, signed char v115, unsigned int v116, unsigned char v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed char v120 = 1;
unsigned short v119 = 5;
signed char v118 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
