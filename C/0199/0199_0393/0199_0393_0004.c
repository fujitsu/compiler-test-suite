#include <stdlib.h>
extern void v1 (unsigned char);
extern void (*v2) (unsigned char);
extern signed char v3 (unsigned int, unsigned int, unsigned char);
extern signed char (*v4) (unsigned int, unsigned int, unsigned char);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern unsigned short v7 (signed short, unsigned int, signed short, signed int);
extern unsigned short (*v8) (signed short, unsigned int, signed short, signed int);
extern signed char v9 (unsigned int, unsigned int, unsigned int, signed short);
extern signed char (*v10) (unsigned int, unsigned int, unsigned int, signed short);
extern void v11 (unsigned int, unsigned int, unsigned short, signed short);
extern void (*v12) (unsigned int, unsigned int, unsigned short, signed short);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned char v17 (unsigned char);
extern unsigned char (*v18) (unsigned char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (unsigned char, signed short);
extern unsigned int (*v22) (unsigned char, signed short);
extern unsigned short v23 (unsigned int);
extern unsigned short (*v24) (unsigned int);
signed int v25 (signed char);
signed int (*v26) (signed char) = v25;
signed int v27 (unsigned short);
signed int (*v28) (unsigned short) = v27;
extern unsigned int v29 (signed int, signed int);
extern unsigned int (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v122 = 1U;
unsigned int v121 = 3U;
signed int v120 = -2;

signed int v27 (unsigned short v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 6;
unsigned int v125 = 4U;
signed short v124 = 2;
trace++;
switch (trace)
{
case 7: 
return -2;
case 9: 
return -3;
case 11: 
return -1;
default: abort ();
}
}
}
}

signed int v25 (signed char v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = 3;
unsigned char v129 = 3;
signed int v128 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
unsigned short v133 = 0;
unsigned short v132 = 1;
signed int v131 = 2;
trace++;
switch (trace)
{
case 2: 
return 3;
case 4: 
{
signed short v134;
unsigned int v135;
signed short v136;
signed int v137;
unsigned short v138;
v134 = 3 - -1;
v135 = 2U + 1U;
v136 = 0 - -2;
v137 = v131 + 2;
v138 = v7 (v134, v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
