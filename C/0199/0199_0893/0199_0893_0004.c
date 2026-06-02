#include <stdlib.h>
extern unsigned int v1 (signed char, signed short);
extern unsigned int (*v2) (signed char, signed short);
extern unsigned short v3 (unsigned short, unsigned int);
extern unsigned short (*v4) (unsigned short, unsigned int);
unsigned short v7 (unsigned int);
unsigned short (*v8) (unsigned int) = v7;
extern void v9 (signed short);
extern void (*v10) (signed short);
signed short v11 (signed char, signed short, signed char);
signed short (*v12) (signed char, signed short, signed char) = v11;
extern unsigned int v13 (signed short, signed short);
extern unsigned int (*v14) (signed short, signed short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern void v17 (unsigned short, signed short, unsigned char, signed short);
extern void (*v18) (unsigned short, signed short, unsigned char, signed short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
unsigned char v23 (signed int);
unsigned char (*v24) (signed int) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
static void v27 (void);
static void (*v28) (void) = v27;
extern void v29 (unsigned short, unsigned char, signed char, unsigned int);
extern void (*v30) (unsigned short, unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v111 = 1;
unsigned short v110 = 5;
unsigned int v109 = 1U;

static void v27 (void)
{
{
for (;;) {
unsigned int v114 = 2U;
unsigned int v113 = 0U;
signed int v112 = -3;
trace++;
switch (trace)
{
case 4: 
return;
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

unsigned char v23 (signed int v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 2;
signed int v117 = 0;
signed short v116 = 1;
trace++;
switch (trace)
{
case 3: 
{
v27 ();
}
break;
case 5: 
return v118;
case 7: 
{
v27 ();
}
break;
case 9: 
{
v27 ();
}
break;
case 11: 
return v118;
default: abort ();
}
}
}
}

signed short v11 (signed char v119, signed short v120, signed char v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 1;
signed int v123 = -3;
unsigned short v122 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
unsigned short v128 = 1;
signed short v127 = -2;
unsigned char v126 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
