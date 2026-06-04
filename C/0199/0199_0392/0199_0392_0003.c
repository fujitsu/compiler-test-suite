#include <stdlib.h>
signed int v1 (signed short, unsigned int, unsigned char);
signed int (*v2) (signed short, unsigned int, unsigned char) = v1;
extern void v3 (signed short, unsigned int, signed char);
extern void (*v4) (signed short, unsigned int, signed char);
static signed char v5 (void);
static signed char (*v6) (void) = v5;
extern unsigned char v7 (signed char, signed short, unsigned int, signed char);
extern unsigned char (*v8) (signed char, signed short, unsigned int, signed char);
extern unsigned short v9 (signed short, unsigned int, unsigned int);
extern unsigned short (*v10) (signed short, unsigned int, unsigned int);
extern unsigned char v11 (unsigned int, signed int);
extern unsigned char (*v12) (unsigned int, signed int);
extern unsigned int v13 (signed int, signed char);
extern unsigned int (*v14) (signed int, signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed int v19 (signed short, signed int, signed int, unsigned short);
extern signed int (*v20) (signed short, signed int, signed int, unsigned short);
extern unsigned int v21 (signed short, signed short);
extern unsigned int (*v22) (signed short, signed short);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned char v25 (unsigned int);
extern unsigned char (*v26) (unsigned int);
extern unsigned int v27 (unsigned int, unsigned char);
extern unsigned int (*v28) (unsigned int, unsigned char);
extern unsigned int v29 (unsigned char, unsigned char, signed int);
extern unsigned int (*v30) (unsigned char, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v120 = -1;
signed char v119 = 0;
unsigned char v118 = 4;

static signed char v5 (void)
{
{
for (;;) {
signed short v123 = 3;
signed int v122 = 3;
signed short v121 = -1;
trace++;
switch (trace)
{
case 5: 
return 3;
default: abort ();
}
}
}
}

signed int v1 (signed short v124, unsigned int v125, unsigned char v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = -1;
unsigned char v128 = 4;
signed int v127 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v130;
unsigned char v131;
unsigned int v132;
v130 = v125 + 4U;
v131 = v126 - v126;
v132 = v27 (v130, v131);
history[history_index++] = (int)v132;
}
break;
case 4: 
{
signed char v133;
v133 = v5 ();
history[history_index++] = (int)v133;
}
break;
case 6: 
{
unsigned int v134;
signed int v135;
unsigned char v136;
v134 = 0U + 7U;
v135 = v129 + v127;
v136 = v11 (v134, v135);
history[history_index++] = (int)v136;
}
break;
case 16: 
return v129;
default: abort ();
}
}
}
}
