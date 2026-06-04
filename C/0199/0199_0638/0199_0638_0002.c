#include <stdlib.h>
extern unsigned short v3 (unsigned char, signed char, signed char, signed short);
extern unsigned short (*v4) (unsigned char, signed char, signed char, signed short);
extern void v5 (unsigned short, signed short, signed short, unsigned short);
extern void (*v6) (unsigned short, signed short, signed short, unsigned short);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern unsigned int v9 (unsigned short, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v10) (unsigned short, unsigned short, unsigned char, unsigned int);
extern signed short v11 (signed char, signed int, signed int);
extern signed short (*v12) (signed char, signed int, signed int);
signed short v13 (signed int, unsigned int, unsigned int);
signed short (*v14) (signed int, unsigned int, unsigned int) = v13;
signed short v15 (signed char, signed short, signed char, unsigned char);
signed short (*v16) (signed char, signed short, signed char, unsigned char) = v15;
extern unsigned char v17 (signed short, signed char, unsigned int);
extern unsigned char (*v18) (signed short, signed char, unsigned int);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
extern signed int v21 (unsigned short, unsigned short, signed char, signed short);
extern signed int (*v22) (unsigned short, unsigned short, signed char, signed short);
unsigned char v23 (signed char, signed int);
unsigned char (*v24) (signed char, signed int) = v23;
unsigned short v25 (signed short, unsigned int, signed char);
unsigned short (*v26) (signed short, unsigned int, signed char) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern void v29 (unsigned char, signed short, signed int, unsigned char);
extern void (*v30) (unsigned char, signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v106 = -3;
signed short v105 = 2;
unsigned short v104 = 7;

unsigned short v25 (signed short v107, unsigned int v108, signed char v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 7U;
signed int v111 = 0;
signed short v110 = -3;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned char v23 (signed char v113, signed int v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 2;
unsigned char v116 = 0;
signed char v115 = 3;
trace++;
switch (trace)
{
case 3: 
return 3;
default: abort ();
}
}
}
}

signed short v15 (signed char v118, signed short v119, signed char v120, unsigned char v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 3;
signed int v123 = -3;
signed short v122 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed int v125, unsigned int v126, unsigned int v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 6;
signed short v129 = 0;
signed char v128 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
