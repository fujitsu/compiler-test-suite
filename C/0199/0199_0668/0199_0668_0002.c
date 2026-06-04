#include <stdlib.h>
extern unsigned short v1 (signed int);
extern unsigned short (*v2) (signed int);
unsigned int v3 (signed char);
unsigned int (*v4) (signed char) = v3;
extern unsigned char v5 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v6) (unsigned char, unsigned short, unsigned short);
extern signed short v7 (unsigned int, unsigned char, signed short, signed char);
extern signed short (*v8) (unsigned int, unsigned char, signed short, signed char);
extern signed int v9 (signed char, signed char, signed char);
extern signed int (*v10) (signed char, signed char, signed char);
void v11 (unsigned char);
void (*v12) (unsigned char) = v11;
signed char v13 (signed char, signed short);
signed char (*v14) (signed char, signed short) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed char v17 (unsigned short, signed int, signed int, unsigned short);
extern signed char (*v18) (unsigned short, signed int, signed int, unsigned short);
static void v19 (void);
static void (*v20) (void) = v19;
void v21 (unsigned int);
void (*v22) (unsigned int) = v21;
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned short v29 (signed int, unsigned short, signed char, signed char);
extern unsigned short (*v30) (signed int, unsigned short, signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v63 = 5;
signed char v62 = 2;
unsigned short v61 = 1;

void v21 (unsigned int v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = -1;
unsigned char v66 = 5;
unsigned int v65 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v19 (void)
{
{
for (;;) {
unsigned char v70 = 2;
signed char v69 = 1;
signed short v68 = -3;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}

signed char v13 (signed char v71, signed short v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 3U;
signed short v74 = -3;
unsigned char v73 = 0;
trace++;
switch (trace)
{
case 3: 
return 0;
case 5: 
return -3;
default: abort ();
}
}
}
}

void v11 (unsigned char v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 5U;
signed int v78 = -2;
unsigned int v77 = 3U;
trace++;
switch (trace)
{
case 7: 
{
signed short v80;
v80 = v15 ();
history[history_index++] = (int)v80;
}
break;
case 9: 
{
v19 ();
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned int v3 (signed char v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = -1;
signed short v83 = 0;
unsigned short v82 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
