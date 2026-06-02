#include <stdlib.h>
unsigned char v1 (unsigned int, signed char);
unsigned char (*v2) (unsigned int, signed char) = v1;
void v3 (void);
void (*v4) (void) = v3;
extern signed int v5 (unsigned short, unsigned char, signed char, unsigned char);
extern signed int (*v6) (unsigned short, unsigned char, signed char, unsigned char);
extern void v7 (signed char, unsigned short, signed int, signed short);
extern void (*v8) (signed char, unsigned short, signed int, signed short);
static signed short v9 (void);
static signed short (*v10) (void) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned int v13 (signed short, signed char, unsigned int, unsigned int);
extern unsigned int (*v14) (signed short, signed char, unsigned int, unsigned int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed int v23 (unsigned int, unsigned int, signed short, signed int);
extern signed int (*v24) (unsigned int, unsigned int, signed short, signed int);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (signed short);
extern void (*v28) (signed short);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v58 = 2;
unsigned int v57 = 7U;
signed int v56 = -4;

static signed short v9 (void)
{
{
for (;;) {
signed short v61 = -2;
signed short v60 = -4;
unsigned short v59 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed int v62;
v62 = v11 ();
history[history_index++] = (int)v62;
}
break;
case 15: 
return -2;
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
signed int v65 = 3;
unsigned char v64 = 0;
unsigned int v63 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v66, signed char v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = -1;
signed int v69 = -2;
unsigned char v68 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed short v71;
v71 = v9 ();
history[history_index++] = (int)v71;
}
break;
case 16: 
return v68;
default: abort ();
}
}
}
}
