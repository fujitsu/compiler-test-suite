#include <stdlib.h>
extern unsigned int v1 (signed short);
extern unsigned int (*v2) (signed short);
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
extern unsigned short v5 (signed int, signed char, unsigned int);
extern unsigned short (*v6) (signed int, signed char, unsigned int);
void v7 (signed short, unsigned int);
void (*v8) (signed short, unsigned int) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern signed char v11 (signed short, unsigned char);
extern signed char (*v12) (signed short, unsigned char);
extern unsigned int v13 (signed char, unsigned int, signed char, signed char);
extern unsigned int (*v14) (signed char, unsigned int, signed char, signed char);
extern signed char v15 (unsigned int, signed int, signed char, signed short);
extern signed char (*v16) (unsigned int, signed int, signed char, signed short);
extern unsigned short v19 (signed int, unsigned int, unsigned short);
extern unsigned short (*v20) (signed int, unsigned int, unsigned short);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
signed char v23 (signed char, unsigned int);
signed char (*v24) (signed char, unsigned int) = v23;
unsigned int v25 (signed short);
unsigned int (*v26) (signed short) = v25;
extern unsigned int v27 (unsigned int, unsigned short);
extern unsigned int (*v28) (unsigned int, unsigned short);
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v68 = -4;
unsigned short v67 = 2;
unsigned char v66 = 5;

unsigned int v25 (signed short v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -3;
unsigned int v71 = 7U;
unsigned short v70 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed char v73, unsigned int v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = -1;
unsigned char v76 = 3;
unsigned short v75 = 4;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v78;
signed short v79;
v78 = v75 + 1;
v79 = v29 (v78);
history[history_index++] = (int)v79;
}
break;
case 7: 
{
unsigned short v80;
signed short v81;
v80 = 0 + v75;
v81 = v29 (v80);
history[history_index++] = (int)v81;
}
break;
case 9: 
return v73;
default: abort ();
}
}
}
}

void v7 (signed short v82, unsigned int v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 1U;
unsigned short v85 = 6;
unsigned char v84 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
