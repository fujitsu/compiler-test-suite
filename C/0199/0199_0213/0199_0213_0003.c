#include <stdlib.h>
extern signed short v3 (signed int, signed short, unsigned char, signed short);
extern signed short (*v4) (signed int, signed short, unsigned char, signed short);
extern signed int v5 (unsigned int, signed int, signed int);
extern signed int (*v6) (unsigned int, signed int, signed int);
void v7 (signed char, signed int);
void (*v8) (signed char, signed int) = v7;
unsigned short v9 (signed char, signed char, unsigned char);
unsigned short (*v10) (signed char, signed char, unsigned char) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed int v15 (unsigned short, signed short);
extern signed int (*v16) (unsigned short, signed short);
extern unsigned int v17 (unsigned short);
extern unsigned int (*v18) (unsigned short);
extern void v19 (void);
extern void (*v20) (void);
extern signed short v21 (unsigned char, unsigned int);
extern signed short (*v22) (unsigned char, unsigned int);
extern signed char v23 (unsigned int, unsigned int);
extern signed char (*v24) (unsigned int, unsigned int);
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
extern unsigned short v27 (signed int, unsigned int, unsigned int);
extern unsigned short (*v28) (signed int, unsigned int, unsigned int);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v105 = 3U;
unsigned int v104 = 1U;
unsigned int v103 = 2U;

signed int v29 (void)
{
{
for (;;) {
signed short v108 = 1;
signed short v107 = 3;
signed char v106 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed char v109, signed char v110, unsigned char v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 1U;
unsigned short v113 = 5;
signed char v112 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed char v115, signed int v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed char v119 = -4;
signed int v118 = 0;
signed char v117 = 1;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v120;
unsigned int v121;
signed char v122;
v120 = 4U + 1U;
v121 = 5U - 2U;
v122 = v23 (v120, v121);
history[history_index++] = (int)v122;
}
break;
case 7: 
{
unsigned int v123;
unsigned int v124;
signed char v125;
v123 = 4U + 2U;
v124 = 0U + 4U;
v125 = v23 (v123, v124);
history[history_index++] = (int)v125;
}
break;
case 9: 
{
unsigned short v126;
signed short v127;
signed int v128;
v126 = 2 - 7;
v127 = 1 + 1;
v128 = v15 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
