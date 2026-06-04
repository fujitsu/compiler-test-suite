#include <stdlib.h>
extern unsigned short v3 (unsigned int, unsigned short, signed int, signed short);
extern unsigned short (*v4) (unsigned int, unsigned short, signed int, signed short);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern unsigned int v7 (unsigned short, signed char, unsigned int);
extern unsigned int (*v8) (unsigned short, signed char, unsigned int);
extern unsigned int v9 (signed int, unsigned short);
extern unsigned int (*v10) (signed int, unsigned short);
extern unsigned short v11 (signed short, unsigned int);
extern unsigned short (*v12) (signed short, unsigned int);
extern signed int v13 (unsigned int, signed int);
extern signed int (*v14) (unsigned int, signed int);
unsigned char v15 (signed int, signed int, signed int);
unsigned char (*v16) (signed int, signed int, signed int) = v15;
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern signed int v19 (unsigned short, signed short);
extern signed int (*v20) (unsigned short, signed short);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
unsigned short v27 (signed short);
unsigned short (*v28) (signed short) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v66 = -2;
signed int v65 = 3;
unsigned short v64 = 2;

unsigned short v27 (signed short v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = 3;
signed short v69 = 0;
unsigned char v68 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
signed int v73 = 1;
unsigned short v72 = 7;
unsigned char v71 = 5;
trace++;
switch (trace)
{
case 7: 
return v73;
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
unsigned char v76 = 1;
unsigned char v75 = 2;
unsigned int v74 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v77, signed int v78, signed int v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = -4;
signed int v81 = -2;
unsigned char v80 = 2;
trace++;
switch (trace)
{
case 3: 
{
signed char v83;
signed int v84;
v83 = v82 + v82;
v84 = v25 (v83);
history[history_index++] = (int)v84;
}
break;
case 5: 
return v80;
default: abort ();
}
}
}
}
