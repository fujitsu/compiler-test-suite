#include <stdlib.h>
extern signed short v3 (void);
extern signed short (*v4) (void);
unsigned int v5 (signed char, signed short);
unsigned int (*v6) (signed char, signed short) = v5;
extern signed char v7 (signed short, signed char, signed char, unsigned int);
extern signed char (*v8) (signed short, signed char, signed char, unsigned int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
signed short v15 (signed char, unsigned char);
signed short (*v16) (signed char, unsigned char) = v15;
extern signed short v17 (unsigned int, signed short);
extern signed short (*v18) (unsigned int, signed short);
extern unsigned char v19 (signed char, unsigned short);
extern unsigned char (*v20) (signed char, unsigned short);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern unsigned char v23 (unsigned short, unsigned int, unsigned short);
extern unsigned char (*v24) (unsigned short, unsigned int, unsigned short);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern signed char v27 (unsigned int, unsigned int, signed char, signed short);
extern signed char (*v28) (unsigned int, unsigned int, signed char, signed short);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v107 = -3;
signed char v106 = -2;
signed short v105 = -1;

unsigned short v25 (void)
{
{
for (;;) {
signed char v110 = 2;
unsigned short v109 = 3;
signed char v108 = -3;
trace++;
switch (trace)
{
case 2: 
return 5;
case 5: 
{
unsigned int v111;
unsigned char v112;
v111 = 4U + 7U;
v112 = v29 (v111);
history[history_index++] = (int)v112;
}
break;
case 7: 
{
unsigned int v113;
unsigned char v114;
v113 = 2U - 5U;
v114 = v29 (v113);
history[history_index++] = (int)v114;
}
break;
case 9: 
{
unsigned int v115;
unsigned char v116;
v115 = 5U + 4U;
v116 = v29 (v115);
history[history_index++] = (int)v116;
}
break;
case 11: 
return 6;
default: abort ();
}
}
}
}

signed short v15 (signed char v117, unsigned char v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 5;
signed short v120 = -3;
unsigned char v119 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed char v122, signed short v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 7;
unsigned int v125 = 6U;
unsigned char v124 = 7;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v127;
v127 = v25 ();
history[history_index++] = (int)v127;
}
break;
case 3: 
{
unsigned char v128;
v128 = v11 ();
history[history_index++] = (int)v128;
}
break;
case 13: 
return v125;
default: abort ();
}
}
}
}
