#include <stdlib.h>
extern void v1 (signed short, signed char);
extern void (*v2) (signed short, signed char);
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
extern void v5 (signed int);
extern void (*v6) (signed int);
extern void v7 (void);
extern void (*v8) (void);
unsigned int v9 (signed char, unsigned short, unsigned char, signed char);
unsigned int (*v10) (signed char, unsigned short, unsigned char, signed char) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (unsigned char, signed short);
extern void (*v14) (unsigned char, signed short);
signed short v15 (signed int, signed short, unsigned short);
signed short (*v16) (signed int, signed short, unsigned short) = v15;
extern unsigned char v17 (signed char, signed int);
extern unsigned char (*v18) (signed char, signed int);
extern unsigned char v19 (signed char, signed char, signed int);
extern unsigned char (*v20) (signed char, signed char, signed int);
extern unsigned short v21 (unsigned short, signed int);
extern unsigned short (*v22) (unsigned short, signed int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
void v25 (signed char, unsigned short);
void (*v26) (signed char, unsigned short) = v25;
extern signed short v27 (signed int);
extern signed short (*v28) (signed int);
extern signed int v29 (signed char, signed char, unsigned int);
extern signed int (*v30) (signed char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v113 = 0;
signed char v112 = 1;
signed int v111 = 3;

void v25 (signed char v114, unsigned short v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 1U;
signed int v117 = 0;
signed short v116 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed int v119, signed short v120, unsigned short v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = 1;
signed int v123 = -3;
signed int v122 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed char v125, unsigned short v126, unsigned char v127, signed char v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 6;
unsigned short v130 = 6;
unsigned char v129 = 6;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v132;
v132 = v11 ();
history[history_index++] = (int)v132;
}
break;
case 6: 
{
unsigned int v133;
v133 = v11 ();
history[history_index++] = (int)v133;
}
break;
case 12: 
return 1U;
default: abort ();
}
}
}
}
