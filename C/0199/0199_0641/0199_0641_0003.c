#include <stdlib.h>
signed short v1 (signed char, unsigned short, signed short, signed char);
signed short (*v2) (signed char, unsigned short, signed short, signed char) = v1;
extern unsigned char v3 (unsigned int, unsigned short, signed short);
extern unsigned char (*v4) (unsigned int, unsigned short, signed short);
signed char v5 (signed char, unsigned short);
signed char (*v6) (signed char, unsigned short) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (unsigned char, unsigned short, unsigned int);
extern unsigned int (*v10) (unsigned char, unsigned short, unsigned int);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
unsigned int v13 (signed int, unsigned int, signed char);
unsigned int (*v14) (signed int, unsigned int, signed char) = v13;
extern signed int v15 (signed int);
extern signed int (*v16) (signed int);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern signed short v19 (signed char);
extern signed short (*v20) (signed char);
extern signed int v21 (unsigned char, unsigned int, signed int);
extern signed int (*v22) (unsigned char, unsigned int, signed int);
extern unsigned char v25 (unsigned int, signed int);
extern unsigned char (*v26) (unsigned int, signed int);
unsigned int v27 (signed int);
unsigned int (*v28) (signed int) = v27;
extern unsigned short v29 (unsigned short, signed int, signed short);
extern unsigned short (*v30) (unsigned short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v100 = 4;
signed int v99 = -4;
unsigned int v98 = 4U;

unsigned int v27 (signed int v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 0;
unsigned char v103 = 6;
unsigned int v102 = 4U;
trace++;
switch (trace)
{
case 4: 
return 4U;
case 7: 
return 6U;
case 10: 
return 6U;
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
unsigned char v107 = 3;
signed short v106 = -3;
signed short v105 = 1;
trace++;
switch (trace)
{
case 6: 
{
signed int v108;
unsigned int v109;
v108 = -4 - -4;
v109 = v27 (v108);
history[history_index++] = (int)v109;
}
break;
case 8: 
return 2U;
default: abort ();
}
}
}
}

unsigned int v13 (signed int v110, unsigned int v111, signed char v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed short v115 = -2;
signed short v114 = -4;
unsigned short v113 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v116, unsigned short v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 3U;
signed int v119 = -2;
signed short v118 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed char v121, unsigned short v122, signed short v123, signed char v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = -2;
unsigned short v126 = 5;
signed char v125 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v128;
unsigned short v129;
unsigned int v130;
unsigned int v131;
v128 = 6 - 4;
v129 = v126 - 2;
v130 = 2U - 2U;
v131 = v9 (v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 12: 
return v127;
default: abort ();
}
}
}
}
