#include <stdlib.h>
signed short v1 (signed char);
signed short (*v2) (signed char) = v1;
extern unsigned int v3 (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned int (*v4) (unsigned int, signed char, unsigned int, unsigned short);
unsigned char v5 (signed short);
unsigned char (*v6) (signed short) = v5;
extern signed short v7 (signed char, unsigned short, signed int);
extern signed short (*v8) (signed char, unsigned short, signed int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed char v11 (unsigned char, signed char, unsigned int, signed int);
extern signed char (*v12) (unsigned char, signed char, unsigned int, signed int);
extern unsigned int v13 (signed char, signed short);
extern unsigned int (*v14) (signed char, signed short);
extern unsigned int v15 (unsigned short, signed short);
extern unsigned int (*v16) (unsigned short, signed short);
extern unsigned char v17 (unsigned short, unsigned short, signed char);
extern unsigned char (*v18) (unsigned short, unsigned short, signed char);
unsigned short v19 (signed int, unsigned short);
unsigned short (*v20) (signed int, unsigned short) = v19;
extern void v21 (signed char);
extern void (*v22) (signed char);
extern signed char v23 (signed int, unsigned short, unsigned char, signed char);
extern signed char (*v24) (signed int, unsigned short, unsigned char, signed char);
extern signed short v25 (unsigned short, unsigned int, unsigned char, signed char);
extern signed short (*v26) (unsigned short, unsigned int, unsigned char, signed char);
extern unsigned short v29 (signed short);
extern unsigned short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v70 = 3U;
signed char v69 = -2;
signed char v68 = -1;

unsigned short v19 (signed int v71, unsigned short v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed short v75 = -3;
unsigned int v74 = 5U;
signed int v73 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed short v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = -3;
signed char v78 = 3;
signed char v77 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed char v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 1U;
signed char v82 = -1;
signed char v81 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v84;
unsigned int v85;
unsigned char v86;
signed char v87;
signed short v88;
v84 = 2 - 7;
v85 = 4U - 6U;
v86 = 7 - 4;
v87 = v81 - v82;
v88 = v25 (v84, v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 2: 
{
signed char v89;
signed short v90;
unsigned int v91;
v89 = v80 - v81;
v90 = -1 + -4;
v91 = v13 (v89, v90);
history[history_index++] = (int)v91;
}
break;
case 16: 
return 3;
default: abort ();
}
}
}
}
