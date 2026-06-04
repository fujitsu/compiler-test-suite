#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
unsigned char v9 (unsigned short);
unsigned char (*v10) (unsigned short) = v9;
extern void v11 (void);
extern void (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v17 (unsigned int, signed short, unsigned int);
extern unsigned short (*v18) (unsigned int, signed short, unsigned int);
unsigned char v19 (unsigned short, unsigned int, unsigned char);
unsigned char (*v20) (unsigned short, unsigned int, unsigned char) = v19;
extern signed short v21 (unsigned short, unsigned char);
extern signed short (*v22) (unsigned short, unsigned char);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (unsigned short, unsigned int, signed short);
extern void (*v30) (unsigned short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v65 = -4;
signed int v64 = -2;
signed short v63 = -2;

unsigned short v23 (void)
{
{
for (;;) {
signed char v68 = -2;
unsigned short v67 = 5;
unsigned char v66 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned short v69, unsigned int v70, unsigned char v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = -1;
signed char v73 = -4;
unsigned char v72 = 1;
trace++;
switch (trace)
{
case 11: 
return v72;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned short v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 7U;
signed int v77 = -1;
unsigned char v76 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v79;
v79 = v27 ();
history[history_index++] = (int)v79;
}
break;
case 3: 
return v76;
case 7: 
return 2;
default: abort ();
}
}
}
}
