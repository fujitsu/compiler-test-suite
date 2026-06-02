#include <stdlib.h>
extern void v1 (signed int, signed char, unsigned short, signed int);
extern void (*v2) (signed int, signed char, unsigned short, signed int);
extern unsigned short v3 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v4) (unsigned char, unsigned char, unsigned int);
extern void v5 (unsigned char);
extern void (*v6) (unsigned char);
signed char v7 (signed char, unsigned char, signed short, signed int);
signed char (*v8) (signed char, unsigned char, signed short, signed int) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed char v11 (unsigned short, signed char);
extern signed char (*v12) (unsigned short, signed char);
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
extern signed int v15 (signed int, signed short, signed char);
extern signed int (*v16) (signed int, signed short, signed char);
extern signed short v17 (unsigned char, signed short, signed int);
extern signed short (*v18) (unsigned char, signed short, signed int);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
signed char v23 (unsigned char, signed short);
signed char (*v24) (unsigned char, signed short) = v23;
unsigned short v25 (signed char, unsigned char, signed int, unsigned short);
unsigned short (*v26) (signed char, unsigned char, signed int, unsigned short) = v25;
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v110 = 5U;
unsigned int v109 = 2U;
signed char v108 = -4;

unsigned short v25 (signed char v111, unsigned char v112, signed int v113, unsigned short v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 1;
signed char v116 = -3;
signed short v115 = 2;
trace++;
switch (trace)
{
case 7: 
return v117;
case 11: 
return v114;
default: abort ();
}
}
}
}

signed char v23 (unsigned char v118, signed short v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed int v122 = -2;
signed short v121 = -2;
unsigned int v120 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
unsigned int v125 = 0U;
unsigned char v124 = 0;
unsigned int v123 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed char v126, unsigned char v127, signed short v128, signed int v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 7;
signed char v131 = -2;
unsigned char v130 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
