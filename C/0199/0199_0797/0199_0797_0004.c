#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
signed short v5 (unsigned int, signed char, signed short, unsigned char);
signed short (*v6) (unsigned int, signed char, signed short, unsigned char) = v5;
extern signed short v7 (unsigned short, signed char, signed char);
extern signed short (*v8) (unsigned short, signed char, signed char);
extern signed short v9 (unsigned int, unsigned char, unsigned short);
extern signed short (*v10) (unsigned int, unsigned char, unsigned short);
extern unsigned int v11 (signed int, signed char, signed int, unsigned short);
extern unsigned int (*v12) (signed int, signed char, signed int, unsigned short);
extern unsigned int v13 (unsigned int);
extern unsigned int (*v14) (unsigned int);
signed short v15 (unsigned int, signed int, signed char);
signed short (*v16) (unsigned int, signed int, signed char) = v15;
extern signed int v17 (signed short);
extern signed int (*v18) (signed short);
extern void v19 (signed short, signed short);
extern void (*v20) (signed short, signed short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned short v25 (signed int, signed char, unsigned int);
extern unsigned short (*v26) (signed int, signed char, unsigned int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed short v29 (unsigned char, signed short, unsigned char);
extern signed short (*v30) (unsigned char, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v107 = 3;
unsigned char v106 = 4;
unsigned int v105 = 7U;

signed short v15 (unsigned int v108, signed int v109, signed char v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned char v113 = 6;
signed short v112 = 3;
unsigned char v111 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned int v114, signed char v115, signed short v116, unsigned char v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed char v120 = -4;
unsigned int v119 = 3U;
unsigned short v118 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (void)
{
{
for (;;) {
signed char v123 = 1;
unsigned char v122 = 7;
signed char v121 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed short v124;
signed short v125;
v124 = 0 + -1;
v125 = -3 - -1;
v19 (v124, v125);
}
break;
case 2: 
{
unsigned short v126;
v126 = v21 ();
history[history_index++] = (int)v126;
}
break;
case 4: 
{
signed short v127;
signed short v128;
v127 = -3 + 1;
v128 = -3 - 0;
v19 (v127, v128);
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
