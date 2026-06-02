#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern void v5 (void);
extern void (*v6) (void);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern signed char v11 (void);
extern signed char (*v12) (void);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern signed short v15 (unsigned int, signed int, signed int, unsigned short);
extern signed short (*v16) (unsigned int, signed int, signed int, unsigned short);
extern unsigned short v17 (signed char, signed short, signed char, unsigned short);
extern unsigned short (*v18) (signed char, signed short, signed char, unsigned short);
extern unsigned int v19 (unsigned int, signed int);
extern unsigned int (*v20) (unsigned int, signed int);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
static void v23 (void);
static void (*v24) (void) = v23;
unsigned int v25 (unsigned short);
unsigned int (*v26) (unsigned short) = v25;
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
signed char v29 (unsigned int, unsigned int);
signed char (*v30) (unsigned int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v49 = 6;
signed char v48 = 2;
unsigned char v47 = 3;

signed char v29 (unsigned int v50, unsigned int v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned short v54 = 1;
signed int v53 = 0;
unsigned short v52 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (unsigned short v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 7U;
unsigned short v57 = 5;
unsigned char v56 = 1;
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
{
v23 ();
}
break;
case 12: 
return v58;
default: abort ();
}
}
}
}

static void v23 (void)
{
{
for (;;) {
unsigned short v61 = 4;
signed short v60 = -1;
unsigned char v59 = 6;
trace++;
switch (trace)
{
case 3: 
return;
case 5: 
return;
case 7: 
return;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
unsigned int v64 = 2U;
unsigned int v63 = 7U;
signed short v62 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
