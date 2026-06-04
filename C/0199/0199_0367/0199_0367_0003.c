#include <stdlib.h>
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (signed char);
extern unsigned int (*v6) (signed char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned int v9 (signed int, signed short, signed char);
extern unsigned int (*v10) (signed int, signed short, signed char);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern unsigned char v13 (signed short);
extern unsigned char (*v14) (signed short);
unsigned short v15 (unsigned int);
unsigned short (*v16) (unsigned int) = v15;
signed short v17 (void);
signed short (*v18) (void) = v17;
signed short v19 (void);
signed short (*v20) (void) = v19;
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (signed int, signed char, unsigned int);
extern signed int (*v26) (signed int, signed char, unsigned int);
extern void v27 (unsigned short, signed int, unsigned char);
extern void (*v28) (unsigned short, signed int, unsigned char);
extern signed char v29 (unsigned char, signed short, signed short, unsigned int);
extern signed char (*v30) (unsigned char, signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v100 = 2;
unsigned short v99 = 7;
signed int v98 = 2;

signed short v19 (void)
{
{
for (;;) {
signed char v103 = -2;
signed short v102 = -1;
unsigned char v101 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
signed short v106 = 3;
unsigned int v105 = 4U;
signed short v104 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = -2;
unsigned int v109 = 6U;
unsigned short v108 = 7;
trace++;
switch (trace)
{
case 2: 
{
v23 ();
}
break;
case 4: 
{
v23 ();
}
break;
case 6: 
{
v23 ();
}
break;
case 8: 
{
v23 ();
}
break;
case 10: 
return 4;
default: abort ();
}
}
}
}
