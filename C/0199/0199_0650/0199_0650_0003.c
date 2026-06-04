#include <stdlib.h>
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned short v7 (signed short, signed short);
extern unsigned short (*v8) (signed short, signed short);
extern void v9 (signed char, unsigned int);
extern void (*v10) (signed char, unsigned int);
unsigned short v11 (signed int, unsigned short);
unsigned short (*v12) (signed int, unsigned short) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed short v15 (signed char, unsigned int, signed char);
extern signed short (*v16) (signed char, unsigned int, signed char);
unsigned char v17 (signed short);
unsigned char (*v18) (signed short) = v17;
extern unsigned short v19 (unsigned char, unsigned char, signed char);
extern unsigned short (*v20) (unsigned char, unsigned char, signed char);
signed int v21 (unsigned char, unsigned int, signed int, signed short);
signed int (*v22) (unsigned char, unsigned int, signed int, signed short) = v21;
extern signed char v23 (unsigned short, signed short, unsigned char, unsigned char);
extern signed char (*v24) (unsigned short, signed short, unsigned char, unsigned char);
unsigned int v25 (signed short, unsigned int, signed char);
unsigned int (*v26) (signed short, unsigned int, signed char) = v25;
signed int v27 (unsigned short);
signed int (*v28) (unsigned short) = v27;
extern signed char v29 (signed short, signed char, unsigned int, signed short);
extern signed char (*v30) (signed short, signed char, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v99 = 5;
signed char v98 = -3;
unsigned short v97 = 3;

signed int v27 (unsigned short v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 4;
unsigned short v102 = 0;
unsigned short v101 = 1;
trace++;
switch (trace)
{
case 2: 
return 0;
default: abort ();
}
}
}
}

unsigned int v25 (signed short v104, unsigned int v105, signed char v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = 3;
signed char v108 = 0;
signed int v107 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned char v110, unsigned int v111, signed int v112, signed short v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 5U;
signed int v115 = 0;
unsigned short v114 = 7;
trace++;
switch (trace)
{
case 5: 
return v115;
case 7: 
return 1;
case 10: 
return v112;
default: abort ();
}
}
}
}

unsigned char v17 (signed short v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 7;
unsigned int v119 = 0U;
signed char v118 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed int v121, unsigned short v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 7;
unsigned short v124 = 3;
signed int v123 = -2;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v126;
unsigned int v127;
signed int v128;
signed short v129;
signed int v130;
v126 = 6 + 7;
v127 = 4U + 1U;
v128 = v123 - -4;
v129 = -3 + 0;
v130 = v21 (v126, v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 11: 
return v122;
default: abort ();
}
}
}
}
