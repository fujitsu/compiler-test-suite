#include <stdlib.h>
unsigned char v1 (unsigned char, signed int);
unsigned char (*v2) (unsigned char, signed int) = v1;
extern signed int v3 (unsigned char, unsigned int);
extern signed int (*v4) (unsigned char, unsigned int);
extern signed int v5 (signed int, unsigned short, unsigned char);
extern signed int (*v6) (signed int, unsigned short, unsigned char);
extern signed int v7 (signed char, signed char, unsigned short, unsigned short);
extern signed int (*v8) (signed char, signed char, unsigned short, unsigned short);
void v9 (unsigned int);
void (*v10) (unsigned int) = v9;
void v11 (unsigned short);
void (*v12) (unsigned short) = v11;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned int v17 (unsigned short, signed int);
extern unsigned int (*v18) (unsigned short, signed int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned int v23 (signed int, unsigned char, unsigned char);
extern unsigned int (*v24) (signed int, unsigned char, unsigned char);
extern signed int v25 (signed short, signed short);
extern signed int (*v26) (signed short, signed short);
extern unsigned char v27 (signed short, unsigned char);
extern unsigned char (*v28) (signed short, unsigned char);
extern signed short v29 (signed short, signed char, signed int);
extern signed short (*v30) (signed short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v120 = -1;
unsigned int v119 = 1U;
unsigned char v118 = 1;

void v11 (unsigned short v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = -1;
unsigned char v123 = 4;
signed char v122 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned int v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed int v128 = 2;
unsigned int v127 = 0U;
unsigned char v126 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v129, signed int v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed short v133 = 3;
signed char v132 = 0;
unsigned char v131 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v134;
v134 = v19 ();
history[history_index++] = (int)v134;
}
break;
case 16: 
return v131;
default: abort ();
}
}
}
}
