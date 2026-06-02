#include <stdlib.h>
extern signed char v1 (signed char, unsigned int, unsigned int, signed short);
extern signed char (*v2) (signed char, unsigned int, unsigned int, signed short);
extern void v3 (void);
extern void (*v4) (void);
extern signed short v5 (signed char, unsigned short);
extern signed short (*v6) (signed char, unsigned short);
extern signed short v7 (void);
extern signed short (*v8) (void);
signed char v9 (unsigned char, unsigned char, signed short);
signed char (*v10) (unsigned char, unsigned char, signed short) = v9;
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern void v13 (signed int, signed short, signed char, unsigned int);
extern void (*v14) (signed int, signed short, signed char, unsigned int);
unsigned short v15 (signed short, signed int);
unsigned short (*v16) (signed short, signed int) = v15;
void v17 (void);
void (*v18) (void) = v17;
extern signed char v19 (unsigned int, signed char, unsigned int, signed short);
extern signed char (*v20) (unsigned int, signed char, unsigned int, signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern signed char v25 (unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int);
extern signed short v27 (unsigned char, unsigned char, unsigned short);
extern signed short (*v28) (unsigned char, unsigned char, unsigned short);
extern signed short v29 (unsigned int, signed char, unsigned char);
extern signed short (*v30) (unsigned int, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v75 = -2;
signed char v74 = -4;
signed short v73 = -4;

void v17 (void)
{
{
for (;;) {
signed short v78 = 1;
signed char v77 = -3;
signed int v76 = -4;
trace++;
switch (trace)
{
case 1: 
{
v17 ();
}
break;
case 2: 
{
v17 ();
}
break;
case 3: 
{
v17 ();
}
break;
case 4: 
{
v17 ();
}
break;
case 5: 
{
v17 ();
}
break;
case 6: 
return;
case 7: 
return;
case 8: 
{
v17 ();
}
break;
case 9: 
{
v17 ();
}
break;
case 10: 
{
v17 ();
}
break;
case 11: 
return;
case 12: 
return;
case 13: 
return;
case 14: 
return;
case 15: 
return;
case 16: 
return;
case 17: 
return;
default: abort ();
}
}
}
}

unsigned short v15 (signed short v79, signed int v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 0;
signed char v82 = 3;
signed char v81 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned char v84, unsigned char v85, signed short v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 1U;
signed char v88 = 3;
signed int v87 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
