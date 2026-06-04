#include <stdlib.h>
extern signed short v1 (signed int, unsigned char);
extern signed short (*v2) (signed int, unsigned char);
extern unsigned int v3 (signed int, unsigned short, unsigned short, unsigned char);
extern unsigned int (*v4) (signed int, unsigned short, unsigned short, unsigned char);
extern signed char v5 (unsigned short, signed int);
extern signed char (*v6) (unsigned short, signed int);
extern unsigned int v7 (signed short, unsigned short, signed short);
extern unsigned int (*v8) (signed short, unsigned short, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern void v11 (signed short, signed short, unsigned int);
extern void (*v12) (signed short, signed short, unsigned int);
extern signed char v13 (void);
extern signed char (*v14) (void);
signed char v15 (unsigned int);
signed char (*v16) (unsigned int) = v15;
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern signed int v19 (signed short, unsigned char, signed int, unsigned short);
extern signed int (*v20) (signed short, unsigned char, signed int, unsigned short);
signed char v21 (signed short, unsigned short, signed int, unsigned int);
signed char (*v22) (signed short, unsigned short, signed int, unsigned int) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed char v27 (unsigned char, signed int);
extern signed char (*v28) (unsigned char, signed int);
unsigned int v29 (signed int, unsigned int);
unsigned int (*v30) (signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v120 = 3;
signed short v119 = -3;
signed char v118 = 3;

unsigned int v29 (signed int v121, unsigned int v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed char v125 = -2;
unsigned int v124 = 0U;
signed int v123 = 2;
trace++;
switch (trace)
{
case 2: 
return v122;
default: abort ();
}
}
}
}

signed char v21 (signed short v126, unsigned short v127, signed int v128, unsigned int v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed short v132 = 0;
signed short v131 = -3;
unsigned int v130 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned int v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
unsigned char v136 = 5;
unsigned short v135 = 6;
signed int v134 = -3;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v137;
v137 = v23 ();
history[history_index++] = (int)v137;
}
break;
case 7: 
{
unsigned short v138;
v138 = v23 ();
history[history_index++] = (int)v138;
}
break;
case 9: 
return -2;
case 11: 
return -2;
default: abort ();
}
}
}
}
