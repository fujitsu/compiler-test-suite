#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned int);
extern signed int (*v2) (unsigned short, unsigned int);
signed char v3 (unsigned char);
signed char (*v4) (unsigned char) = v3;
signed char v5 (void);
signed char (*v6) (void) = v5;
extern unsigned char v7 (unsigned short, signed int);
extern unsigned char (*v8) (unsigned short, signed int);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern unsigned short v11 (unsigned int, unsigned short, unsigned short, signed int);
extern unsigned short (*v12) (unsigned int, unsigned short, unsigned short, signed int);
unsigned char v13 (signed short, unsigned char);
unsigned char (*v14) (signed short, unsigned char) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (unsigned short, signed int);
extern unsigned int (*v18) (unsigned short, signed int);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern void v21 (unsigned int, unsigned short, signed short, signed char);
extern void (*v22) (unsigned int, unsigned short, signed short, signed char);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
unsigned int v25 (signed short, unsigned char);
unsigned int (*v26) (signed short, unsigned char) = v25;
extern signed int v27 (signed int, signed char, signed short);
extern signed int (*v28) (signed int, signed char, signed short);
extern signed char v29 (signed int, unsigned char, unsigned char);
extern signed char (*v30) (signed int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v63 = 3;
unsigned short v62 = 0;
signed int v61 = -3;

unsigned int v25 (signed short v64, unsigned char v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = 0;
signed char v67 = -4;
unsigned int v66 = 2U;
trace++;
switch (trace)
{
case 6: 
return v66;
case 8: 
return v66;
case 10: 
return v66;
default: abort ();
}
}
}
}

unsigned char v13 (signed short v69, unsigned char v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = -1;
signed char v72 = 2;
signed char v71 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
unsigned int v76 = 0U;
signed int v75 = -2;
unsigned int v74 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
unsigned int v79 = 1U;
unsigned char v78 = 2;
unsigned int v77 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned char v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 2;
unsigned short v82 = 7;
signed char v81 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
