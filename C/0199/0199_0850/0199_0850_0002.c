#include <stdlib.h>
extern void v1 (unsigned char, unsigned char);
extern void (*v2) (unsigned char, unsigned char);
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern signed short v5 (signed char, signed int);
extern signed short (*v6) (signed char, signed int);
extern signed int v7 (unsigned short, unsigned int);
extern signed int (*v8) (unsigned short, unsigned int);
signed char v9 (signed int, unsigned int);
signed char (*v10) (signed int, unsigned int) = v9;
extern signed short v11 (unsigned short, unsigned int);
extern signed short (*v12) (unsigned short, unsigned int);
extern signed int v13 (signed short, signed int, unsigned short);
extern signed int (*v14) (signed short, signed int, unsigned short);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern unsigned short v17 (signed char, signed short, unsigned char, unsigned int);
extern unsigned short (*v18) (signed char, signed short, unsigned char, unsigned int);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed short v21 (signed short, unsigned int, unsigned int, unsigned int);
extern signed short (*v22) (signed short, unsigned int, unsigned int, unsigned int);
unsigned int v23 (signed short, unsigned int, unsigned short);
unsigned int (*v24) (signed short, unsigned int, unsigned short) = v23;
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern unsigned int v27 (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned int (*v28) (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v66 = 3;
unsigned char v65 = 5;
signed int v64 = 0;

unsigned int v23 (signed short v67, unsigned int v68, unsigned short v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 5;
unsigned short v71 = 0;
unsigned int v70 = 4U;
trace++;
switch (trace)
{
case 10: 
return v70;
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
unsigned int v75 = 4U;
signed short v74 = -1;
unsigned int v73 = 7U;
trace++;
switch (trace)
{
case 5: 
return 3;
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
unsigned short v78 = 1;
signed short v77 = 2;
unsigned short v76 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed int v79, unsigned int v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = -2;
unsigned short v82 = 3;
unsigned char v81 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
