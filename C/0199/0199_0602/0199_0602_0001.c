#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
unsigned short v3 (unsigned int, unsigned short);
unsigned short (*v4) (unsigned int, unsigned short) = v3;
unsigned char v5 (signed short, signed int, unsigned int, signed int);
unsigned char (*v6) (signed short, signed int, unsigned int, signed int) = v5;
extern unsigned char v7 (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned char (*v8) (unsigned short, signed char, unsigned short, unsigned int);
unsigned short v9 (signed short, unsigned short);
unsigned short (*v10) (signed short, unsigned short) = v9;
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern unsigned char v15 (signed int, unsigned char, signed char, signed char);
extern unsigned char (*v16) (signed int, unsigned char, signed char, signed char);
extern unsigned short v17 (unsigned int, unsigned int);
extern unsigned short (*v18) (unsigned int, unsigned int);
extern unsigned char v19 (signed char, signed int);
extern unsigned char (*v20) (signed char, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
void v23 (void);
void (*v24) (void) = v23;
extern unsigned char v25 (signed short, unsigned short, unsigned int, unsigned char);
extern unsigned char (*v26) (signed short, unsigned short, unsigned int, unsigned char);
extern void v27 (unsigned int, unsigned short, signed short, unsigned char);
extern void (*v28) (unsigned int, unsigned short, signed short, unsigned char);
extern unsigned short v29 (unsigned short, unsigned short, signed short, unsigned short);
extern unsigned short (*v30) (unsigned short, unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v66 = 0;
signed int v65 = 0;
signed char v64 = 0;

void v23 (void)
{
{
for (;;) {
signed int v69 = -2;
signed char v68 = -2;
signed short v67 = -4;
trace++;
switch (trace)
{
case 4: 
return;
case 6: 
return;
default: abort ();
}
}
}
}

unsigned short v9 (signed short v70, unsigned short v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 4;
signed char v73 = -3;
unsigned short v72 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed short v75, signed int v76, unsigned int v77, signed int v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = 3;
unsigned int v80 = 7U;
signed int v79 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v82, unsigned short v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 4;
unsigned short v85 = 7;
signed char v84 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
