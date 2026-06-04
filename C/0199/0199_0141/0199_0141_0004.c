#include <stdlib.h>
void v3 (signed char, signed short);
void (*v4) (signed char, signed short) = v3;
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern signed int v7 (signed int, unsigned short, signed char);
extern signed int (*v8) (signed int, unsigned short, signed char);
signed int v9 (unsigned char, unsigned int);
signed int (*v10) (unsigned char, unsigned int) = v9;
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern void v13 (signed char, unsigned char);
extern void (*v14) (signed char, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed char v19 (signed int, signed short, signed short);
extern signed char (*v20) (signed int, signed short, signed short);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
signed int v23 (unsigned short, signed int, signed char);
signed int (*v24) (unsigned short, signed int, signed char) = v23;
extern unsigned char v27 (unsigned short, signed char);
extern unsigned char (*v28) (unsigned short, signed char);
extern void v29 (unsigned char);
extern void (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v118 = 3U;
signed short v117 = -3;
unsigned int v116 = 2U;

signed int v23 (unsigned short v119, signed int v120, signed char v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = 1;
signed char v123 = 0;
signed char v122 = 3;
trace++;
switch (trace)
{
case 4: 
return 3;
default: abort ();
}
}
}
}

signed int v9 (unsigned char v125, unsigned int v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 4;
signed char v128 = 2;
unsigned short v127 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed char v130, signed short v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = 2;
signed short v133 = -3;
signed int v132 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
