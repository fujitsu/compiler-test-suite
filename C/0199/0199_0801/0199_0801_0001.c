#include <stdlib.h>
extern void v3 (unsigned int, unsigned short, signed short);
extern void (*v4) (unsigned int, unsigned short, signed short);
extern signed int v5 (signed int, unsigned short);
extern signed int (*v6) (signed int, unsigned short);
signed int v7 (unsigned int, signed int);
signed int (*v8) (unsigned int, signed int) = v7;
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
void v11 (signed char, unsigned char);
void (*v12) (signed char, unsigned char) = v11;
extern signed char v13 (signed char, signed short, signed char, signed short);
extern signed char (*v14) (signed char, signed short, signed char, signed short);
extern signed short v15 (signed int, signed int, signed int);
extern signed short (*v16) (signed int, signed int, signed int);
extern void v17 (void);
extern void (*v18) (void);
unsigned char v19 (unsigned int, signed short, signed int);
unsigned char (*v20) (unsigned int, signed short, signed int) = v19;
extern unsigned short v21 (unsigned int, unsigned int, signed char, signed int);
extern unsigned short (*v22) (unsigned int, unsigned int, signed char, signed int);
extern void v23 (signed short, unsigned short, unsigned short);
extern void (*v24) (signed short, unsigned short, unsigned short);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern unsigned char v27 (signed short, signed char, signed int);
extern unsigned char (*v28) (signed short, signed char, signed int);
extern signed int v29 (unsigned short, unsigned short);
extern signed int (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v60 = 0;
unsigned short v59 = 0;
signed char v58 = -2;

unsigned int v25 (void)
{
{
for (;;) {
unsigned char v63 = 2;
signed char v62 = 1;
unsigned char v61 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned int v64, signed short v65, signed int v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed char v69 = 1;
unsigned int v68 = 6U;
unsigned int v67 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed char v70, unsigned char v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 4;
unsigned char v73 = 6;
signed char v72 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v75;
unsigned int v76;
signed char v77;
signed int v78;
unsigned short v79;
v75 = 1U + 6U;
v76 = 4U - 3U;
v77 = 0 + 0;
v78 = 1 + 1;
v79 = v21 (v75, v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

signed int v7 (unsigned int v80, signed int v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed char v84 = 1;
signed int v83 = -4;
unsigned char v82 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
