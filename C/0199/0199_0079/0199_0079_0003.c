#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned char);
extern unsigned int (*v2) (signed short, unsigned char);
extern signed char v5 (unsigned short, signed int);
extern signed char (*v6) (unsigned short, signed int);
extern unsigned short v7 (unsigned int, unsigned short);
extern unsigned short (*v8) (unsigned int, unsigned short);
extern unsigned char v9 (unsigned int, signed int, unsigned short);
extern unsigned char (*v10) (unsigned int, signed int, unsigned short);
signed char v11 (void);
signed char (*v12) (void) = v11;
extern signed short v13 (signed char, unsigned short, signed char);
extern signed short (*v14) (signed char, unsigned short, signed char);
extern unsigned short v15 (signed short, unsigned short);
extern unsigned short (*v16) (signed short, unsigned short);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
signed short v19 (signed int, signed short);
signed short (*v20) (signed int, signed short) = v19;
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern unsigned char v23 (signed short, unsigned short, unsigned char);
extern unsigned char (*v24) (signed short, unsigned short, unsigned char);
signed int v25 (unsigned char, signed short);
signed int (*v26) (unsigned char, signed short) = v25;
extern unsigned int v27 (unsigned char, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v28) (unsigned char, unsigned short, unsigned int, unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v113 = 0;
signed int v112 = -2;
unsigned short v111 = 1;

signed int v25 (unsigned char v114, signed short v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = 3;
unsigned short v117 = 4;
signed short v116 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed int v119, signed short v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = -4;
signed int v122 = -2;
unsigned int v121 = 1U;
trace++;
switch (trace)
{
case 11: 
return v120;
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
unsigned short v126 = 2;
unsigned int v125 = 5U;
unsigned short v124 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
signed char v129 = -4;
signed int v128 = 0;
signed short v127 = 2;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}
