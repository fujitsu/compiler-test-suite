#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
signed int v3 (unsigned int, unsigned short);
signed int (*v4) (unsigned int, unsigned short) = v3;
extern unsigned short v5 (unsigned short, unsigned int, signed char, signed short);
extern unsigned short (*v6) (unsigned short, unsigned int, signed char, signed short);
extern signed char v7 (signed int, unsigned short, unsigned short);
extern signed char (*v8) (signed int, unsigned short, unsigned short);
extern signed short v9 (signed short, signed short);
extern signed short (*v10) (signed short, signed short);
extern signed short v11 (unsigned char, signed char, unsigned short);
extern signed short (*v12) (unsigned char, signed char, unsigned short);
void v13 (signed short, unsigned char, signed int, unsigned short);
void (*v14) (signed short, unsigned char, signed int, unsigned short) = v13;
extern unsigned char v15 (signed int, signed short, unsigned char, unsigned short);
extern unsigned char (*v16) (signed int, signed short, unsigned char, unsigned short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed int v21 (signed char, unsigned short);
extern signed int (*v22) (signed char, unsigned short);
extern unsigned int v23 (signed short, unsigned char, signed int, unsigned int);
extern unsigned int (*v24) (signed short, unsigned char, signed int, unsigned int);
extern unsigned char v25 (signed short, unsigned int, unsigned short);
extern unsigned char (*v26) (signed short, unsigned int, unsigned short);
extern unsigned short v27 (unsigned short, signed char, signed short);
extern unsigned short (*v28) (unsigned short, signed char, signed short);
extern unsigned short v29 (signed int, unsigned char, signed int);
extern unsigned short (*v30) (signed int, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v117 = 0U;
unsigned int v116 = 0U;
signed int v115 = -4;

void v13 (signed short v118, unsigned char v119, signed int v120, unsigned short v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned int v124 = 1U;
signed short v123 = -4;
unsigned int v122 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned int v125, unsigned short v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = -4;
unsigned short v128 = 5;
unsigned short v127 = 0;
trace++;
switch (trace)
{
case 6: 
{
signed short v130;
signed short v131;
signed short v132;
v130 = 2 - 3;
v131 = -1 - 0;
v132 = v9 (v130, v131);
history[history_index++] = (int)v132;
}
break;
case 12: 
return v129;
default: abort ();
}
}
}
}
