#include <stdlib.h>
void v1 (signed char, unsigned short, unsigned short, signed short);
void (*v2) (signed char, unsigned short, unsigned short, signed short) = v1;
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
signed short v5 (void);
signed short (*v6) (void) = v5;
signed char v7 (void);
signed char (*v8) (void) = v7;
extern unsigned char v9 (unsigned short, signed int, unsigned char, signed char);
extern unsigned char (*v10) (unsigned short, signed int, unsigned char, signed char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
signed char v13 (void);
signed char (*v14) (void) = v13;
unsigned char v15 (signed short, unsigned short, unsigned short);
unsigned char (*v16) (signed short, unsigned short, unsigned short) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
void v23 (void);
void (*v24) (void) = v23;
extern unsigned char v25 (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned char (*v26) (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned char v27 (unsigned int, signed char, signed int);
extern unsigned char (*v28) (unsigned int, signed char, signed int);
extern unsigned char v29 (signed char, unsigned int, unsigned char);
extern unsigned char (*v30) (signed char, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v54 = -2;
signed int v53 = -1;
signed char v52 = -1;

void v23 (void)
{
{
for (;;) {
unsigned int v57 = 1U;
unsigned char v56 = 4;
signed int v55 = -4;
trace++;
switch (trace)
{
case 7: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned char v15 (signed short v58, unsigned short v59, unsigned short v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned int v63 = 2U;
unsigned short v62 = 2;
signed char v61 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
unsigned short v66 = 0;
unsigned short v65 = 4;
unsigned char v64 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
signed short v69 = 3;
unsigned char v68 = 2;
signed int v67 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
signed int v72 = 0;
signed int v71 = -4;
signed short v70 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed char v73, unsigned short v74, unsigned short v75, signed short v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = -1;
unsigned short v78 = 6;
signed char v77 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v80;
signed int v81;
unsigned char v82;
signed char v83;
unsigned char v84;
v80 = v78 - v78;
v81 = 3 + 2;
v82 = 2 - 5;
v83 = v77 + -3;
v84 = v9 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
