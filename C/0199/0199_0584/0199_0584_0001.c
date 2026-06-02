#include <stdlib.h>
extern signed short v1 (signed char, unsigned char, signed short, signed int);
extern signed short (*v2) (signed char, unsigned char, signed short, signed int);
void v3 (unsigned char, signed int, unsigned int);
void (*v4) (unsigned char, signed int, unsigned int) = v3;
extern void v5 (unsigned short, signed char);
extern void (*v6) (unsigned short, signed char);
extern signed int v7 (signed char);
extern signed int (*v8) (signed char);
unsigned short v9 (signed char, unsigned int);
unsigned short (*v10) (signed char, unsigned int) = v9;
extern unsigned int v11 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned int, signed char, unsigned int);
extern void v13 (unsigned char, signed char, signed short);
extern void (*v14) (unsigned char, signed char, signed short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
signed int v17 (void);
signed int (*v18) (void) = v17;
extern unsigned char v19 (unsigned short, signed short);
extern unsigned char (*v20) (unsigned short, signed short);
signed short v21 (signed char);
signed short (*v22) (signed char) = v21;
extern unsigned short v23 (unsigned short, signed int, signed int, signed short);
extern unsigned short (*v24) (unsigned short, signed int, signed int, signed short);
extern void v25 (signed int, signed short, unsigned short, unsigned int);
extern void (*v26) (signed int, signed short, unsigned short, unsigned int);
void v27 (void);
void (*v28) (void) = v27;
extern unsigned char v29 (signed short);
extern unsigned char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v57 = 6;
signed char v56 = -2;
unsigned char v55 = 1;

void v27 (void)
{
{
for (;;) {
signed char v60 = -1;
unsigned int v59 = 1U;
signed char v58 = -4;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}

signed short v21 (signed char v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = 3;
unsigned short v63 = 4;
signed int v62 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
signed short v67 = 2;
signed char v66 = 3;
unsigned int v65 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed char v68, unsigned int v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 1;
unsigned short v71 = 7;
signed int v70 = 2;
trace++;
switch (trace)
{
case 1: 
return v71;
default: abort ();
}
}
}
}

void v3 (unsigned char v73, signed int v74, unsigned int v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = -4;
signed int v77 = -2;
signed short v76 = -3;
trace++;
switch (trace)
{
case 8: 
{
signed int v79;
signed short v80;
unsigned short v81;
unsigned int v82;
v79 = v74 - 3;
v80 = v76 - 0;
v81 = 1 + 6;
v82 = v75 - 2U;
v25 (v79, v80, v81, v82);
}
break;
case 10: 
{
signed short v83;
unsigned char v84;
v83 = 2 - -1;
v84 = v29 (v83);
history[history_index++] = (int)v84;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
