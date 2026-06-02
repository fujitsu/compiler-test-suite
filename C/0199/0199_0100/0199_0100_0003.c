#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed short v3 (signed char);
extern signed short (*v4) (signed char);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern unsigned int v7 (unsigned int, signed short, signed int);
extern unsigned int (*v8) (unsigned int, signed short, signed int);
extern signed int v9 (signed char);
extern signed int (*v10) (signed char);
unsigned int v11 (unsigned short);
unsigned int (*v12) (unsigned short) = v11;
unsigned short v13 (unsigned short, signed int, unsigned int, unsigned char);
unsigned short (*v14) (unsigned short, signed int, unsigned int, unsigned char) = v13;
signed int v17 (signed int);
signed int (*v18) (signed int) = v17;
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed char v21 (signed char, unsigned char);
extern signed char (*v22) (signed char, unsigned char);
unsigned int v23 (signed short, unsigned short);
unsigned int (*v24) (signed short, unsigned short) = v23;
extern unsigned int v25 (signed int, unsigned int, unsigned char);
extern unsigned int (*v26) (signed int, unsigned int, unsigned char);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern signed char v29 (signed int, unsigned int, signed short);
extern signed char (*v30) (signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v101 = -1;
unsigned int v100 = 2U;
unsigned int v99 = 2U;

unsigned int v23 (signed short v102, unsigned short v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 1;
signed int v105 = 2;
signed int v104 = 2;
trace++;
switch (trace)
{
case 5: 
return 3U;
case 10: 
return 0U;
default: abort ();
}
}
}
}

signed int v17 (signed int v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
unsigned char v110 = 0;
unsigned int v109 = 5U;
signed short v108 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned short v111, signed int v112, unsigned int v113, unsigned char v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = -4;
unsigned char v116 = 5;
signed char v115 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = -4;
unsigned int v120 = 1U;
signed short v119 = 2;
trace++;
switch (trace)
{
case 8: 
{
signed char v122;
signed int v123;
v122 = 1 - -3;
v123 = v9 (v122);
history[history_index++] = (int)v123;
}
break;
case 12: 
return 5U;
default: abort ();
}
}
}
}
