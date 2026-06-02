#include <stdlib.h>
extern void v1 (signed char);
extern void (*v2) (signed char);
extern signed short v3 (signed int, signed char, unsigned int);
extern signed short (*v4) (signed int, signed char, unsigned int);
extern unsigned short v5 (signed int, unsigned int, unsigned int, signed short);
extern unsigned short (*v6) (signed int, unsigned int, unsigned int, signed short);
signed char v7 (signed char, unsigned char, unsigned int, unsigned int);
signed char (*v8) (signed char, unsigned char, unsigned int, unsigned int) = v7;
extern signed char v9 (unsigned int, unsigned int, signed char, signed short);
extern signed char (*v10) (unsigned int, unsigned int, signed char, signed short);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (unsigned short, unsigned char, unsigned short, unsigned int);
extern unsigned char (*v14) (unsigned short, unsigned char, unsigned short, unsigned int);
signed char v15 (signed char, signed char, signed char);
signed char (*v16) (signed char, signed char, signed char) = v15;
extern unsigned short v17 (unsigned int, signed short);
extern unsigned short (*v18) (unsigned int, signed short);
extern void v19 (signed short, signed char, signed short, unsigned short);
extern void (*v20) (signed short, signed char, signed short, unsigned short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
unsigned char v25 (signed char, signed short);
unsigned char (*v26) (signed char, signed short) = v25;
extern signed char v27 (void);
extern signed char (*v28) (void);
extern void v29 (signed int);
extern void (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v104 = 3;
unsigned short v103 = 7;
unsigned char v102 = 0;

unsigned char v25 (signed char v105, signed short v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = -1;
signed char v108 = -2;
unsigned char v107 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed char v110, signed char v111, signed char v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 2;
signed char v114 = 1;
signed int v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed char v116, unsigned char v117, unsigned int v118, unsigned int v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 0U;
unsigned char v121 = 4;
unsigned short v120 = 0;
trace++;
switch (trace)
{
case 4: 
{
signed int v123;
v123 = 0 + 0;
v29 (v123);
}
break;
case 6: 
return v116;
case 8: 
{
signed int v124;
v124 = -4 - 0;
v29 (v124);
}
break;
case 10: 
{
signed int v125;
v125 = -1 - -2;
v29 (v125);
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
