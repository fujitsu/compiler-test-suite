#include <stdlib.h>
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
unsigned char v5 (signed int, unsigned short, signed char);
unsigned char (*v6) (signed int, unsigned short, signed char) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern unsigned int v15 (signed int, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v16) (signed int, unsigned short, unsigned int, unsigned char);
void v17 (void);
void (*v18) (void) = v17;
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (unsigned char, signed char, signed short, signed char);
extern signed char (*v22) (unsigned char, signed char, signed short, signed char);
extern signed int v23 (signed short, unsigned int, unsigned int, unsigned short);
extern signed int (*v24) (signed short, unsigned int, unsigned int, unsigned short);
extern signed int v25 (signed short);
extern signed int (*v26) (signed short);
signed char v27 (unsigned int, unsigned short, unsigned char, unsigned char);
signed char (*v28) (unsigned int, unsigned short, unsigned char, unsigned char) = v27;
extern void v29 (signed short, signed char);
extern void (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v117 = 3;
signed char v116 = 3;
unsigned short v115 = 3;

signed char v27 (unsigned int v118, unsigned short v119, unsigned char v120, unsigned char v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned int v124 = 6U;
signed int v123 = 3;
signed int v122 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
signed int v127 = 2;
signed int v126 = -1;
unsigned int v125 = 1U;
trace++;
switch (trace)
{
case 7: 
{
signed short v128;
v128 = v19 ();
history[history_index++] = (int)v128;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned char v5 (signed int v129, unsigned short v130, signed char v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed int v134 = -3;
unsigned short v133 = 0;
unsigned int v132 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
