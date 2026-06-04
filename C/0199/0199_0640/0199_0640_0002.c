#include <stdlib.h>
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
signed short v9 (unsigned char, signed short, signed int);
signed short (*v10) (unsigned char, signed short, signed int) = v9;
extern unsigned char v11 (signed char);
extern unsigned char (*v12) (signed char);
extern unsigned char v13 (signed int, signed int);
extern unsigned char (*v14) (signed int, signed int);
extern signed short v15 (signed short, signed char, unsigned char);
extern signed short (*v16) (signed short, signed char, unsigned char);
extern signed short v17 (signed char, unsigned int, unsigned short);
extern signed short (*v18) (signed char, unsigned int, unsigned short);
extern signed short v21 (signed char, signed short, unsigned int);
extern signed short (*v22) (signed char, signed short, unsigned int);
unsigned int v25 (unsigned short, signed short);
unsigned int (*v26) (unsigned short, signed short) = v25;
signed short v27 (unsigned short, signed char, signed short);
signed short (*v28) (unsigned short, signed char, signed short) = v27;
unsigned short v29 (signed char, signed int, unsigned char);
unsigned short (*v30) (signed char, signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v89 = 5;
signed char v88 = 0;
signed int v87 = -2;

unsigned short v29 (signed char v90, signed int v91, unsigned char v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned short v95 = 2;
signed int v94 = -1;
signed short v93 = 0;
trace++;
switch (trace)
{
case 2: 
return 5;
case 11: 
return v95;
default: abort ();
}
}
}
}

signed short v27 (unsigned short v96, signed char v97, signed short v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed int v101 = 0;
signed int v100 = 3;
unsigned int v99 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (unsigned short v102, signed short v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = -3;
signed int v105 = 2;
unsigned int v104 = 3U;
trace++;
switch (trace)
{
case 9: 
{
signed short v107;
v107 = v5 ();
history[history_index++] = (int)v107;
}
break;
case 13: 
return v104;
default: abort ();
}
}
}
}

signed short v9 (unsigned char v108, signed short v109, signed int v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = 3;
unsigned short v112 = 6;
unsigned char v111 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
