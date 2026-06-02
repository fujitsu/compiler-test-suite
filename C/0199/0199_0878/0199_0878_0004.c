#include <stdlib.h>
extern unsigned int v3 (unsigned short, unsigned short);
extern unsigned int (*v4) (unsigned short, unsigned short);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed char v7 (unsigned char, signed char);
extern signed char (*v8) (unsigned char, signed char);
extern signed int v9 (unsigned int, signed short);
extern signed int (*v10) (unsigned int, signed short);
extern void v11 (signed char, signed short, signed short);
extern void (*v12) (signed char, signed short, signed short);
unsigned char v13 (unsigned char);
unsigned char (*v14) (unsigned char) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
unsigned int v17 (signed char, signed short);
unsigned int (*v18) (signed char, signed short) = v17;
extern void v19 (unsigned char, unsigned char);
extern void (*v20) (unsigned char, unsigned char);
extern signed char v21 (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed char (*v22) (unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
unsigned int v25 (signed short, unsigned char, unsigned char);
unsigned int (*v26) (signed short, unsigned char, unsigned char) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v116 = 0;
signed char v115 = 1;
signed char v114 = -4;

unsigned int v25 (signed short v117, unsigned char v118, unsigned char v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = -1;
unsigned short v121 = 5;
signed char v120 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed char v123, signed short v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = -4;
signed int v126 = 1;
signed char v125 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned char v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = -2;
unsigned int v130 = 3U;
signed int v129 = -3;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v132;
v132 = v15 ();
history[history_index++] = (int)v132;
}
break;
case 6: 
{
unsigned short v133;
v133 = v15 ();
history[history_index++] = (int)v133;
}
break;
case 8: 
return v128;
default: abort ();
}
}
}
}
