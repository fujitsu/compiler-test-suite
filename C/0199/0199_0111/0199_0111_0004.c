#include <stdlib.h>
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed char v7 (signed int, unsigned short);
extern signed char (*v8) (signed int, unsigned short);
extern signed short v9 (signed int, unsigned char, signed char);
extern signed short (*v10) (signed int, unsigned char, signed char);
extern void v11 (void);
extern void (*v12) (void);
extern signed short v13 (signed short, signed short);
extern signed short (*v14) (signed short, signed short);
extern signed int v15 (signed char, signed int, signed short, signed int);
extern signed int (*v16) (signed char, signed int, signed short, signed int);
unsigned int v17 (unsigned char, signed int, signed char, unsigned short);
unsigned int (*v18) (unsigned char, signed int, signed char, unsigned short) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
unsigned int v23 (signed char);
unsigned int (*v24) (signed char) = v23;
extern signed int v25 (signed char, unsigned char, signed short, signed short);
extern signed int (*v26) (signed char, unsigned char, signed short, signed short);
extern unsigned short v27 (signed short, unsigned short);
extern unsigned short (*v28) (signed short, unsigned short);
extern unsigned int v29 (unsigned int, signed int);
extern unsigned int (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v121 = -1;
unsigned char v120 = 7;
signed char v119 = 1;

unsigned int v23 (signed char v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
signed short v125 = -3;
unsigned short v124 = 5;
signed char v123 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed short v126;
unsigned short v127;
unsigned short v128;
v126 = v125 + 1;
v127 = v124 + 2;
v128 = v27 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 6: 
return 1U;
case 10: 
return 3U;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned char v129, signed int v130, signed char v131, unsigned short v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = -1;
signed char v134 = -1;
signed short v133 = 0;
trace++;
switch (trace)
{
case 1: 
return 7U;
default: abort ();
}
}
}
}
