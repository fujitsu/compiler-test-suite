#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned char, signed short);
extern unsigned char (*v2) (signed char, unsigned char, signed short);
extern signed int v3 (signed char, signed short, unsigned char);
extern signed int (*v4) (signed char, signed short, unsigned char);
signed short v7 (unsigned int, signed char);
signed short (*v8) (unsigned int, signed char) = v7;
extern signed char v9 (unsigned short, unsigned char);
extern signed char (*v10) (unsigned short, unsigned char);
extern signed int v13 (signed int, unsigned int);
extern signed int (*v14) (signed int, unsigned int);
extern signed int v15 (signed int, signed short);
extern signed int (*v16) (signed int, signed short);
unsigned int v17 (signed int, signed int);
unsigned int (*v18) (signed int, signed int) = v17;
extern signed short v19 (unsigned char, unsigned int);
extern signed short (*v20) (unsigned char, unsigned int);
extern signed short v21 (signed short, unsigned char, signed int);
extern signed short (*v22) (signed short, unsigned char, signed int);
extern signed short v23 (unsigned int, signed short);
extern signed short (*v24) (unsigned int, signed short);
signed int v25 (signed int, unsigned short);
signed int (*v26) (signed int, unsigned short) = v25;
extern unsigned short v27 (unsigned short, unsigned short, unsigned char, signed short);
extern unsigned short (*v28) (unsigned short, unsigned short, unsigned char, signed short);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v98 = 1;
signed char v97 = -4;
signed char v96 = 1;

signed int v25 (signed int v99, unsigned short v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = 0;
signed int v102 = -2;
unsigned int v101 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed int v104, signed int v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = 3;
unsigned int v107 = 5U;
unsigned short v106 = 1;
trace++;
switch (trace)
{
case 10: 
{
signed int v109;
signed short v110;
signed int v111;
v109 = v104 + v104;
v110 = -4 + 1;
v111 = v15 (v109, v110);
history[history_index++] = (int)v111;
}
break;
case 12: 
return 4U;
default: abort ();
}
}
}
}

signed short v7 (unsigned int v112, signed char v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 6;
unsigned short v115 = 4;
unsigned short v114 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
