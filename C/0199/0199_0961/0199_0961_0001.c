#include <stdlib.h>
unsigned char v1 (unsigned int);
unsigned char (*v2) (unsigned int) = v1;
extern signed int v3 (signed char, unsigned char, unsigned short);
extern signed int (*v4) (signed char, unsigned char, unsigned short);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern unsigned char v7 (unsigned char, signed short, unsigned short, unsigned short);
extern unsigned char (*v8) (unsigned char, signed short, unsigned short, unsigned short);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned short v11 (signed int, signed int, unsigned short, signed int);
extern unsigned short (*v12) (signed int, signed int, unsigned short, signed int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed int v15 (void);
extern signed int (*v16) (void);
unsigned int v17 (signed short);
unsigned int (*v18) (signed short) = v17;
signed int v19 (unsigned char, signed short, unsigned short, signed char);
signed int (*v20) (unsigned char, signed short, unsigned short, signed char) = v19;
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
unsigned char v23 (signed int);
unsigned char (*v24) (signed int) = v23;
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
extern void v27 (void);
extern void (*v28) (void);
extern void v29 (unsigned int);
extern void (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v59 = 0;
signed short v58 = -4;
signed short v57 = -2;

unsigned char v23 (signed int v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 5;
signed int v62 = 3;
unsigned int v61 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned char v64, signed short v65, unsigned short v66, signed char v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed short v70 = -2;
signed short v69 = 0;
unsigned short v68 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed short v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = -4;
unsigned char v73 = 1;
unsigned char v72 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
unsigned char v78 = 4;
signed int v77 = 0;
signed short v76 = 0;
trace++;
switch (trace)
{
case 0: 
{
v9 ();
}
break;
case 2: 
{
v27 ();
}
break;
case 12: 
return 5;
default: abort ();
}
}
}
}
