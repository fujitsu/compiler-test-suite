#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
signed char v5 (signed int, unsigned int, unsigned short);
signed char (*v6) (signed int, unsigned int, unsigned short) = v5;
extern signed short v7 (signed int, signed char);
extern signed short (*v8) (signed int, signed char);
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
extern signed short v11 (signed char, signed short, unsigned int, unsigned short);
extern signed short (*v12) (signed char, signed short, unsigned int, unsigned short);
extern void v13 (unsigned int, unsigned short, signed int);
extern void (*v14) (unsigned int, unsigned short, signed int);
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern unsigned char v17 (unsigned char, unsigned short, signed char, unsigned short);
extern unsigned char (*v18) (unsigned char, unsigned short, signed char, unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed char v21 (unsigned char, unsigned short);
extern signed char (*v22) (unsigned char, unsigned short);
extern unsigned char v23 (signed short, signed int, unsigned short, unsigned char);
extern unsigned char (*v24) (signed short, signed int, unsigned short, unsigned char);
signed int v25 (signed char, unsigned short);
signed int (*v26) (signed char, unsigned short) = v25;
unsigned int v27 (signed int);
unsigned int (*v28) (signed int) = v27;
extern signed short v29 (unsigned short, signed short, unsigned short);
extern signed short (*v30) (unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v68 = -2;
unsigned short v67 = 7;
signed int v66 = -3;

unsigned int v27 (signed int v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = 0;
unsigned char v71 = 3;
signed short v70 = 0;
trace++;
switch (trace)
{
case 8: 
return 7U;
default: abort ();
}
}
}
}

signed int v25 (signed char v73, unsigned short v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned int v77 = 3U;
signed char v76 = -1;
signed char v75 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed int v78, unsigned int v79, unsigned short v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = -4;
signed char v82 = -1;
unsigned char v81 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
unsigned int v86 = 1U;
signed short v85 = -4;
signed int v84 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed char v87;
signed short v88;
unsigned int v89;
unsigned short v90;
signed short v91;
v87 = 0 + -4;
v88 = v85 - v85;
v89 = v86 + 2U;
v90 = 3 + 0;
v91 = v11 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 14: 
return v85;
default: abort ();
}
}
}
}
