#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed char, unsigned char, signed short);
extern unsigned short (*v2) (unsigned char, signed char, unsigned char, signed short);
extern signed char v3 (signed short, unsigned short);
extern signed char (*v4) (signed short, unsigned short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
unsigned char v7 (unsigned int);
unsigned char (*v8) (unsigned int) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
void v13 (unsigned int, signed char);
void (*v14) (unsigned int, signed char) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed char v19 (signed short, signed char, signed short, signed short);
extern signed char (*v20) (signed short, signed char, signed short, signed short);
signed int v21 (signed char, unsigned int, signed char, signed short);
signed int (*v22) (signed char, unsigned int, signed char, signed short) = v21;
extern signed char v23 (signed char, signed short, signed short, unsigned short);
extern signed char (*v24) (signed char, signed short, signed short, unsigned short);
void v25 (unsigned int, signed char);
void (*v26) (unsigned int, signed char) = v25;
extern unsigned short v27 (signed short, signed short);
extern unsigned short (*v28) (signed short, signed short);
extern signed int v29 (unsigned char);
extern signed int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v69 = 0;
signed char v68 = 3;
signed short v67 = -1;

void v25 (unsigned int v70, signed char v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned char v74 = 6;
unsigned short v73 = 2;
unsigned short v72 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed char v75, unsigned int v76, signed char v77, signed short v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 4;
signed char v80 = 0;
signed short v79 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v82;
signed short v83;
signed short v84;
unsigned short v85;
signed char v86;
v82 = 0 + v75;
v83 = v78 - 0;
v84 = v79 + v78;
v85 = 2 + v81;
v86 = v23 (v82, v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 19: 
return -1;
default: abort ();
}
}
}
}

void v13 (unsigned int v87, signed char v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = 2;
signed char v90 = 3;
signed char v89 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = -3;
unsigned int v94 = 1U;
signed int v93 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
