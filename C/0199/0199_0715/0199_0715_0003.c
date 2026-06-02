#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed short v3 (unsigned char, unsigned short);
extern signed short (*v4) (unsigned char, unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern void v7 (signed char, unsigned char, unsigned char, unsigned char);
extern void (*v8) (signed char, unsigned char, unsigned char, unsigned char);
void v9 (unsigned char, unsigned int, unsigned short, unsigned char);
void (*v10) (unsigned char, unsigned int, unsigned short, unsigned char) = v9;
extern unsigned short v11 (signed int, unsigned char, unsigned char);
extern unsigned short (*v12) (signed int, unsigned char, unsigned char);
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
extern signed short v15 (unsigned char, unsigned char, signed int, signed char);
extern signed short (*v16) (unsigned char, unsigned char, signed int, signed char);
extern signed int v17 (signed short, unsigned char, unsigned char, unsigned int);
extern signed int (*v18) (signed short, unsigned char, unsigned char, unsigned int);
signed short v19 (unsigned short, signed int, unsigned short);
signed short (*v20) (unsigned short, signed int, unsigned short) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
signed int v23 (signed char);
signed int (*v24) (signed char) = v23;
signed char v25 (void);
signed char (*v26) (void) = v25;
extern signed int v27 (signed char, unsigned int, signed short, signed short);
extern signed int (*v28) (signed char, unsigned int, signed short, signed short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v115 = 0U;
signed char v114 = -4;
unsigned short v113 = 4;

signed char v25 (void)
{
{
for (;;) {
signed int v118 = 0;
unsigned int v117 = 6U;
signed char v116 = 2;
trace++;
switch (trace)
{
case 2: 
return v116;
case 4: 
return -3;
case 11: 
return -1;
default: abort ();
}
}
}
}

signed int v23 (signed char v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 7;
unsigned int v121 = 3U;
unsigned int v120 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned short v123, signed int v124, unsigned short v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned char v128 = 7;
signed short v127 = 1;
unsigned int v126 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned char v129, unsigned int v130, unsigned short v131, unsigned char v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 4;
signed char v134 = 0;
unsigned int v133 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
