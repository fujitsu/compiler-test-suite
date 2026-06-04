#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned short);
extern unsigned int (*v2) (unsigned char, unsigned short);
signed int v3 (signed char, signed int);
signed int (*v4) (signed char, signed int) = v3;
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern signed short v9 (signed int, unsigned int, signed short, signed int);
extern signed short (*v10) (signed int, unsigned int, signed short, signed int);
extern void v11 (void);
extern void (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
extern void v19 (signed char, unsigned char, unsigned short, signed char);
extern void (*v20) (signed char, unsigned char, unsigned short, signed char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern unsigned short v27 (unsigned char);
extern unsigned short (*v28) (unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v62 = -2;
signed int v61 = -3;
unsigned int v60 = 1U;

signed short v23 (void)
{
{
for (;;) {
unsigned char v65 = 2;
unsigned int v64 = 2U;
unsigned short v63 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
signed int v68 = -1;
signed int v67 = -4;
unsigned int v66 = 5U;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

signed int v3 (signed char v69, signed int v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 1;
signed short v72 = 0;
unsigned char v71 = 1;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v74;
unsigned short v75;
v74 = 0 + v71;
v75 = v27 (v74);
history[history_index++] = (int)v75;
}
break;
case 15: 
return v70;
default: abort ();
}
}
}
}
