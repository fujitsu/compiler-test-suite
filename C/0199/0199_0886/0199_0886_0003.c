#include <stdlib.h>
unsigned char v1 (unsigned int, unsigned char, unsigned char, unsigned short);
unsigned char (*v2) (unsigned int, unsigned char, unsigned char, unsigned short) = v1;
extern signed char v3 (unsigned int, signed char, signed char);
extern signed char (*v4) (unsigned int, signed char, signed char);
extern unsigned int v7 (unsigned short, signed int, signed short, unsigned char);
extern unsigned int (*v8) (unsigned short, signed int, signed short, unsigned char);
extern unsigned int v9 (unsigned char, signed char, signed char);
extern unsigned int (*v10) (unsigned char, signed char, signed char);
void v11 (void);
void (*v12) (void) = v11;
extern signed int v13 (signed char, unsigned int, signed char);
extern signed int (*v14) (signed char, unsigned int, signed char);
extern signed short v15 (unsigned int, unsigned int, unsigned int, unsigned short);
extern signed short (*v16) (unsigned int, unsigned int, unsigned int, unsigned short);
extern void v17 (signed short, unsigned char);
extern void (*v18) (signed short, unsigned char);
unsigned char v19 (unsigned short);
unsigned char (*v20) (unsigned short) = v19;
extern unsigned int v21 (signed int, unsigned char, unsigned short, signed int);
extern unsigned int (*v22) (signed int, unsigned char, unsigned short, signed int);
extern unsigned char v23 (unsigned int);
extern unsigned char (*v24) (unsigned int);
extern signed short v25 (signed int, signed char, signed short, signed short);
extern signed short (*v26) (signed int, signed char, signed short, signed short);
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern signed int v29 (unsigned int, unsigned int);
extern signed int (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v111 = 2;
signed short v110 = 0;
unsigned short v109 = 5;

unsigned char v19 (unsigned short v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
signed int v115 = -2;
signed int v114 = -4;
signed char v113 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
signed char v118 = -4;
signed int v117 = 1;
unsigned short v116 = 0;
trace++;
switch (trace)
{
case 3: 
return;
case 5: 
return;
case 7: 
return;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v119, unsigned char v120, unsigned char v121, unsigned short v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 4;
unsigned int v124 = 2U;
unsigned char v123 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v126;
unsigned char v127;
v126 = 0 - v122;
v127 = v27 (v126);
history[history_index++] = (int)v127;
}
break;
case 14: 
return v123;
default: abort ();
}
}
}
}
