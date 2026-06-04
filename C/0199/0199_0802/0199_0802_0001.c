#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern void v7 (signed char, unsigned short, unsigned int, signed short);
extern void (*v8) (signed char, unsigned short, unsigned int, signed short);
extern unsigned int v9 (signed char, signed short, unsigned int, signed int);
extern unsigned int (*v10) (signed char, signed short, unsigned int, signed int);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern signed int v13 (unsigned short, unsigned char, signed short);
extern signed int (*v14) (unsigned short, unsigned char, signed short);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern unsigned char v17 (unsigned short, signed char, signed int);
extern unsigned char (*v18) (unsigned short, signed char, signed int);
void v19 (signed short);
void (*v20) (signed short) = v19;
static void v21 (void);
static void (*v22) (void) = v21;
void v23 (unsigned int, signed char);
void (*v24) (unsigned int, signed char) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (unsigned short);
extern signed int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v55 = 5U;
signed char v54 = 2;
signed short v53 = 0;

void v23 (unsigned int v56, signed char v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = 3;
unsigned char v59 = 4;
signed int v58 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v21 (void)
{
{
for (;;) {
signed short v63 = 3;
unsigned char v62 = 4;
signed char v61 = 1;
trace++;
switch (trace)
{
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

void v19 (signed short v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
signed char v67 = 2;
signed short v66 = 1;
signed short v65 = 2;
trace++;
switch (trace)
{
case 2: 
{
v25 ();
}
break;
case 4: 
{
v25 ();
}
break;
case 6: 
{
v25 ();
}
break;
case 8: 
{
v21 ();
}
break;
case 10: 
{
v21 ();
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed char v70 = 0;
signed int v69 = -2;
signed char v68 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
