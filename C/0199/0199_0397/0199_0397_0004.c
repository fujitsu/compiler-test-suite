#include <stdlib.h>
extern unsigned short v1 (signed char);
extern unsigned short (*v2) (signed char);
extern unsigned short v3 (unsigned char, signed int, unsigned char, unsigned short);
extern unsigned short (*v4) (unsigned char, signed int, unsigned char, unsigned short);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern signed short v7 (void);
extern signed short (*v8) (void);
void v9 (signed char);
void (*v10) (signed char) = v9;
void v11 (void);
void (*v12) (void) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern unsigned int v19 (signed int);
extern unsigned int (*v20) (signed int);
extern signed int v21 (unsigned char, signed short);
extern signed int (*v22) (unsigned char, signed short);
extern signed short v23 (unsigned char, unsigned int, signed char);
extern signed short (*v24) (unsigned char, unsigned int, signed char);
extern unsigned int v25 (signed short);
extern unsigned int (*v26) (signed short);
extern unsigned short v27 (signed short, unsigned int, signed char, unsigned int);
extern unsigned short (*v28) (signed short, unsigned int, signed char, unsigned int);
extern void v29 (signed int, signed char);
extern void (*v30) (signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v117 = 1;
unsigned int v116 = 7U;
unsigned char v115 = 7;

unsigned char v17 (void)
{
{
for (;;) {
signed int v120 = -1;
unsigned char v119 = 4;
signed int v118 = -2;
trace++;
switch (trace)
{
case 3: 
return v119;
case 5: 
{
unsigned char v121;
signed short v122;
signed int v123;
v121 = 7 + 4;
v122 = 3 + -2;
v123 = v21 (v121, v122);
history[history_index++] = (int)v123;
}
break;
case 8: 
return 4;
case 13: 
return 2;
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
unsigned short v126 = 1;
unsigned short v125 = 6;
signed short v124 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed short v127;
unsigned int v128;
signed char v129;
unsigned int v130;
unsigned short v131;
v127 = 1 + 0;
v128 = 5U - 6U;
v129 = -2 + 2;
v130 = 4U + 1U;
v131 = v27 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}

void v9 (signed char v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 1;
signed char v134 = -3;
signed int v133 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
