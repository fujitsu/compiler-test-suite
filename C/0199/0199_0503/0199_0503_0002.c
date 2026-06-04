#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned short, signed char);
extern unsigned char (*v2) (signed int, unsigned short, signed char);
extern unsigned int v3 (signed char, signed char, signed short, signed int);
extern unsigned int (*v4) (signed char, signed char, signed short, signed int);
extern signed char v5 (signed int, unsigned int, unsigned char);
extern signed char (*v6) (signed int, unsigned int, unsigned char);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
void v11 (signed short, unsigned int);
void (*v12) (signed short, unsigned int) = v11;
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
extern unsigned char v15 (signed int, unsigned int);
extern unsigned char (*v16) (signed int, unsigned int);
extern unsigned short v17 (unsigned char);
extern unsigned short (*v18) (unsigned char);
extern void v19 (unsigned char, signed short, unsigned int);
extern void (*v20) (unsigned char, signed short, unsigned int);
extern unsigned int v21 (signed short, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern unsigned int v25 (signed int);
extern unsigned int (*v26) (signed int);
extern unsigned char v27 (unsigned short, unsigned char, signed short);
extern unsigned char (*v28) (unsigned short, unsigned char, signed short);
extern unsigned char v29 (unsigned int, unsigned char, signed int);
extern unsigned char (*v30) (unsigned int, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v62 = -3;
signed int v61 = -4;
unsigned char v60 = 6;

unsigned int v23 (void)
{
{
for (;;) {
signed short v65 = -3;
unsigned char v64 = 0;
signed int v63 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v66, unsigned int v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = -1;
signed int v69 = 1;
unsigned short v68 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
unsigned short v73 = 3;
unsigned short v72 = 0;
signed short v71 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v74;
unsigned char v75;
signed short v76;
unsigned char v77;
v74 = v73 + 1;
v75 = 0 - 7;
v76 = -4 + v71;
v77 = v27 (v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 3: 
{
unsigned char v78;
unsigned short v79;
v78 = 0 + 7;
v79 = v17 (v78);
history[history_index++] = (int)v79;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}
