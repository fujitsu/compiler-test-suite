#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed char);
extern unsigned short (*v2) (unsigned char, signed char);
extern unsigned short v3 (unsigned char, signed short, signed int);
extern unsigned short (*v4) (unsigned char, signed short, signed int);
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
extern unsigned int v7 (signed int, unsigned short, signed int);
extern unsigned int (*v8) (signed int, unsigned short, signed int);
extern signed short v9 (unsigned int, signed int, signed short);
extern signed short (*v10) (unsigned int, signed int, signed short);
signed char v11 (signed short, signed short, unsigned char, signed int);
signed char (*v12) (signed short, signed short, unsigned char, signed int) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (signed short, signed int, signed short);
extern signed int (*v22) (signed short, signed int, signed short);
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
signed char v25 (void);
signed char (*v26) (void) = v25;
void v27 (unsigned int, signed short, unsigned short);
void (*v28) (unsigned int, signed short, unsigned short) = v27;
extern void v29 (unsigned short, unsigned char, signed int);
extern void (*v30) (unsigned short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v73 = -1;
unsigned short v72 = 1;
unsigned int v71 = 5U;

void v27 (unsigned int v74, signed short v75, unsigned short v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 1;
unsigned short v78 = 3;
signed int v77 = -3;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

signed char v25 (void)
{
{
for (;;) {
unsigned int v82 = 7U;
signed char v81 = 0;
unsigned short v80 = 5;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v83;
unsigned char v84;
signed int v85;
v83 = 4 + v80;
v84 = 0 + 3;
v85 = -4 + -1;
v29 (v83, v84, v85);
}
break;
case 9: 
{
unsigned short v86;
unsigned char v87;
signed int v88;
v86 = v80 - 7;
v87 = 2 - 0;
v88 = 1 - -3;
v29 (v86, v87, v88);
}
break;
case 11: 
return v81;
default: abort ();
}
}
}
}

signed char v11 (signed short v89, signed short v90, unsigned char v91, signed int v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed char v95 = 2;
signed short v94 = 0;
unsigned char v93 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
