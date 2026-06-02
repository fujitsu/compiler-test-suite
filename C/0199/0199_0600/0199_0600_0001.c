#include <stdlib.h>
void v1 (signed char);
void (*v2) (signed char) = v1;
extern signed short v3 (signed int, signed char, unsigned int);
extern signed short (*v4) (signed int, signed char, unsigned int);
extern unsigned short v5 (signed int, unsigned int, unsigned int, signed short);
extern unsigned short (*v6) (signed int, unsigned int, unsigned int, signed short);
extern signed char v7 (signed char, unsigned char, unsigned int, unsigned int);
extern signed char (*v8) (signed char, unsigned char, unsigned int, unsigned int);
signed char v9 (unsigned int, unsigned int, signed char, signed short);
signed char (*v10) (unsigned int, unsigned int, signed char, signed short) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (unsigned short, unsigned char, unsigned short, unsigned int);
extern unsigned char (*v14) (unsigned short, unsigned char, unsigned short, unsigned int);
extern signed char v15 (signed char, signed char, signed char);
extern signed char (*v16) (signed char, signed char, signed char);
extern unsigned short v17 (unsigned int, signed short);
extern unsigned short (*v18) (unsigned int, signed short);
void v19 (signed short, signed char, signed short, unsigned short);
void (*v20) (signed short, signed char, signed short, unsigned short) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned char v25 (signed char, signed short);
extern unsigned char (*v26) (signed char, signed short);
signed char v27 (void);
signed char (*v28) (void) = v27;
extern void v29 (signed int);
extern void (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v66 = -2;
unsigned int v65 = 3U;
unsigned int v64 = 0U;

signed char v27 (void)
{
{
for (;;) {
unsigned short v69 = 4;
unsigned short v68 = 4;
unsigned int v67 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed short v70, signed char v71, signed short v72, unsigned short v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned short v76 = 1;
unsigned int v75 = 4U;
unsigned int v74 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned int v77, unsigned int v78, signed char v79, signed short v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 5;
signed short v82 = 3;
signed short v81 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed char v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
unsigned short v87 = 7;
unsigned int v86 = 3U;
signed char v85 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed int v88;
signed char v89;
unsigned int v90;
signed short v91;
v88 = -2 - -1;
v89 = v85 - v85;
v90 = 0U + v86;
v91 = v3 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
