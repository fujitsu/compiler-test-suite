#include <stdlib.h>
void v3 (void);
void (*v4) (void) = v3;
extern unsigned int v5 (unsigned char, unsigned int);
extern unsigned int (*v6) (unsigned char, unsigned int);
extern signed int v7 (signed short, unsigned int, unsigned int);
extern signed int (*v8) (signed short, unsigned int, unsigned int);
extern signed int v9 (unsigned int, unsigned int, signed char, unsigned char);
extern signed int (*v10) (unsigned int, unsigned int, signed char, unsigned char);
signed short v11 (unsigned short);
signed short (*v12) (unsigned short) = v11;
extern unsigned char v13 (signed short, signed int);
extern unsigned char (*v14) (signed short, signed int);
unsigned short v17 (signed short, signed int);
unsigned short (*v18) (signed short, signed int) = v17;
extern void v19 (unsigned short, unsigned short);
extern void (*v20) (unsigned short, unsigned short);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern signed int v23 (signed char, signed short);
extern signed int (*v24) (signed char, signed short);
extern signed short v25 (unsigned short, signed short);
extern signed short (*v26) (unsigned short, signed short);
extern unsigned int v27 (signed short, unsigned short, signed char, unsigned short);
extern unsigned int (*v28) (signed short, unsigned short, signed char, unsigned short);
extern signed short v29 (signed short, unsigned short, signed short, signed int);
extern signed short (*v30) (signed short, unsigned short, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v82 = -1;
signed short v81 = -3;
unsigned char v80 = 0;

unsigned short v17 (signed short v83, signed int v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed short v87 = -3;
signed int v86 = -2;
unsigned int v85 = 3U;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v88;
unsigned short v89;
v88 = 1 - 6;
v89 = 3 - 1;
v19 (v88, v89);
}
break;
case 10: 
{
unsigned short v90;
unsigned short v91;
v90 = 5 + 0;
v91 = 0 - 7;
v19 (v90, v91);
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}

signed short v11 (unsigned short v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = 3;
signed char v94 = -3;
unsigned short v93 = 6;
trace++;
switch (trace)
{
case 1: 
return -3;
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
unsigned char v98 = 5;
unsigned int v97 = 0U;
unsigned short v96 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
