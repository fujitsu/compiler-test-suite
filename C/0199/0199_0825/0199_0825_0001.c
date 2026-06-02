#include <stdlib.h>
unsigned int v1 (signed short);
unsigned int (*v2) (signed short) = v1;
extern void v3 (signed int, unsigned int);
extern void (*v4) (signed int, unsigned int);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern void v7 (signed char, signed char, signed int, signed short);
extern void (*v8) (signed char, signed char, signed int, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v13 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v14) (unsigned char, unsigned char, unsigned int);
unsigned short v15 (unsigned int, signed char);
unsigned short (*v16) (unsigned int, signed char) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern void v19 (signed char, signed int);
extern void (*v20) (signed char, signed int);
extern signed short v21 (unsigned char, signed int);
extern signed short (*v22) (unsigned char, signed int);
extern signed char v23 (unsigned short, signed int);
extern signed char (*v24) (unsigned short, signed int);
extern unsigned char v25 (signed short);
extern unsigned char (*v26) (signed short);
signed int v27 (unsigned char);
signed int (*v28) (unsigned char) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v59 = 2U;
unsigned char v58 = 2;
unsigned short v57 = 2;

signed int v27 (unsigned char v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 4;
signed short v62 = 0;
unsigned char v61 = 1;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v64;
v64 = v9 ();
history[history_index++] = (int)v64;
}
break;
case 13: 
return -2;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v65, signed char v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed char v69 = -4;
unsigned char v68 = 3;
signed char v67 = -2;
trace++;
switch (trace)
{
case 7: 
{
signed char v70;
signed int v71;
v70 = 0 - v66;
v71 = 1 - 0;
v19 (v70, v71);
}
break;
case 15: 
return 0;
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
unsigned int v74 = 4U;
signed int v73 = 3;
signed char v72 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed short v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 1;
signed char v77 = -4;
signed int v76 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed int v79;
unsigned int v80;
v79 = 3 - -1;
v80 = 7U - 0U;
v3 (v79, v80);
}
break;
case 20: 
return 7U;
default: abort ();
}
}
}
}
