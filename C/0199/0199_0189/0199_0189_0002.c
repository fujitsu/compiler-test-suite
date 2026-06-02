#include <stdlib.h>
unsigned int v1 (unsigned int, signed int, signed short);
unsigned int (*v2) (unsigned int, signed int, signed short) = v1;
extern signed short v3 (signed char);
extern signed short (*v4) (signed char);
extern unsigned short v5 (signed short, signed char, signed char);
extern unsigned short (*v6) (signed short, signed char, signed char);
static void v7 (void);
static void (*v8) (void) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned int v11 (unsigned int, signed short);
extern unsigned int (*v12) (unsigned int, signed short);
extern unsigned short v13 (unsigned int, unsigned int);
extern unsigned short (*v14) (unsigned int, unsigned int);
extern signed char v15 (signed int);
extern signed char (*v16) (signed int);
extern signed char v17 (unsigned short, signed char);
extern signed char (*v18) (unsigned short, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned char v23 (signed short, signed int);
extern unsigned char (*v24) (signed short, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned char v27 (signed int, unsigned int, signed short);
extern unsigned char (*v28) (signed int, unsigned int, signed short);
extern unsigned short v29 (unsigned short, signed int);
extern unsigned short (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v68 = -1;
signed short v67 = -4;
signed int v66 = 3;

static void v7 (void)
{
{
for (;;) {
signed int v71 = 2;
signed short v70 = 2;
unsigned int v69 = 1U;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v72;
v72 = v19 ();
history[history_index++] = (int)v72;
}
break;
case 3: 
return;
case 9: 
{
v25 ();
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned int v1 (unsigned int v73, signed int v74, signed short v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = -4;
unsigned int v77 = 5U;
signed short v76 = 0;
trace++;
switch (trace)
{
case 0: 
{
v7 ();
}
break;
case 4: 
{
signed int v79;
v79 = v21 ();
history[history_index++] = (int)v79;
}
break;
case 8: 
{
v7 ();
}
break;
case 14: 
return v73;
default: abort ();
}
}
}
}
