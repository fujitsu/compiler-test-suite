#include <stdlib.h>
extern unsigned short v1 (signed char, signed int, signed char);
extern unsigned short (*v2) (signed char, signed int, signed char);
extern signed int v3 (signed int, signed char);
extern signed int (*v4) (signed int, signed char);
extern unsigned short v5 (signed char, signed char, signed char);
extern unsigned short (*v6) (signed char, signed char, signed char);
extern unsigned char v7 (unsigned int, unsigned short, signed int);
extern unsigned char (*v8) (unsigned int, unsigned short, signed int);
unsigned short v9 (unsigned short, unsigned int, signed int);
unsigned short (*v10) (unsigned short, unsigned int, signed int) = v9;
extern unsigned int v11 (signed int, unsigned short);
extern unsigned int (*v12) (signed int, unsigned short);
extern signed char v13 (unsigned short, unsigned short, unsigned short, signed char);
extern signed char (*v14) (unsigned short, unsigned short, unsigned short, signed char);
extern unsigned char v15 (signed short, signed int, signed int);
extern unsigned char (*v16) (signed short, signed int, signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned char v19 (unsigned short, unsigned short, signed char);
extern unsigned char (*v20) (unsigned short, unsigned short, signed char);
signed int v21 (signed short);
signed int (*v22) (signed short) = v21;
extern signed int v23 (signed short);
extern signed int (*v24) (signed short);
signed char v25 (signed char, unsigned char);
signed char (*v26) (signed char, unsigned char) = v25;
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern signed short v29 (unsigned int, signed short, unsigned short, signed short);
extern signed short (*v30) (unsigned int, signed short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v101 = -3;
signed char v100 = 2;
unsigned short v99 = 3;

signed char v25 (signed char v102, unsigned char v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = 2;
signed short v105 = 3;
unsigned char v104 = 2;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v107;
signed int v108;
v107 = 5 - v103;
v108 = v27 (v107);
history[history_index++] = (int)v108;
}
break;
case 14: 
return v102;
default: abort ();
}
}
}
}

signed int v21 (signed short v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
signed int v112 = -2;
signed char v111 = 2;
signed short v110 = -3;
trace++;
switch (trace)
{
case 1: 
return v112;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v113, unsigned int v114, signed int v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = -2;
unsigned short v117 = 1;
unsigned int v116 = 2U;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v119;
v119 = v17 ();
history[history_index++] = (int)v119;
}
break;
case 8: 
{
unsigned int v120;
v120 = v17 ();
history[history_index++] = (int)v120;
}
break;
case 12: 
return v117;
default: abort ();
}
}
}
}
