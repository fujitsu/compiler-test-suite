#include <stdlib.h>
extern void v3 (void);
extern void (*v4) (void);
void v5 (signed char);
void (*v6) (signed char) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
unsigned char v9 (unsigned char, signed int, unsigned int, unsigned short);
unsigned char (*v10) (unsigned char, signed int, unsigned int, unsigned short) = v9;
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (unsigned char, signed short);
extern unsigned int (*v16) (unsigned char, signed short);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned char v21 (unsigned char);
extern unsigned char (*v22) (unsigned char);
unsigned short v25 (unsigned char, unsigned short, unsigned char, signed short);
unsigned short (*v26) (unsigned char, unsigned short, unsigned char, signed short) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (unsigned short, unsigned int);
extern signed char (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v110 = 1;
signed short v109 = -1;
signed short v108 = 2;

unsigned short v25 (unsigned char v111, unsigned short v112, unsigned char v113, signed short v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 4;
signed int v116 = -1;
signed char v115 = -2;
trace++;
switch (trace)
{
case 11: 
return v112;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v118, signed int v119, unsigned int v120, unsigned short v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = 2;
signed int v123 = -3;
signed char v122 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed char v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
unsigned short v128 = 7;
signed char v127 = -4;
signed short v126 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v129;
v129 = v19 ();
history[history_index++] = (int)v129;
}
break;
case 7: 
{
unsigned int v130;
v130 = v19 ();
history[history_index++] = (int)v130;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
