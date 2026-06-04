#include <stdlib.h>
extern unsigned int v1 (signed int, unsigned char, signed char);
extern unsigned int (*v2) (signed int, unsigned char, signed char);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
signed char v5 (signed char, signed int);
signed char (*v6) (signed char, signed int) = v5;
void v7 (void);
void (*v8) (void) = v7;
void v9 (void);
void (*v10) (void) = v9;
extern signed char v11 (unsigned int, signed int);
extern signed char (*v12) (unsigned int, signed int);
extern signed short v13 (unsigned char, signed char, unsigned char, signed short);
extern signed short (*v14) (unsigned char, signed char, unsigned char, signed short);
extern signed char v15 (unsigned char, signed short);
extern signed char (*v16) (unsigned char, signed short);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern unsigned short v21 (unsigned char, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned int);
extern signed short v23 (signed short, unsigned char, unsigned short);
extern signed short (*v24) (signed short, unsigned char, unsigned short);
extern unsigned short v25 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned int);
unsigned short v27 (signed char);
unsigned short (*v28) (signed char) = v27;
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v72 = 5U;
unsigned int v71 = 0U;
unsigned int v70 = 2U;

unsigned short v27 (signed char v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = -1;
signed char v75 = -2;
signed short v74 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
signed char v79 = 3;
signed short v78 = -2;
signed short v77 = -1;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v80;
unsigned int v81;
unsigned int v82;
unsigned short v83;
v80 = 6U + 0U;
v81 = 6U - 1U;
v82 = 7U - 7U;
v83 = v25 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
unsigned char v86 = 4;
unsigned int v85 = 0U;
unsigned short v84 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v87, signed int v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 7;
signed int v90 = 0;
signed char v89 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
