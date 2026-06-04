#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
unsigned int v3 (unsigned int, signed char);
unsigned int (*v4) (unsigned int, signed char) = v3;
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed int v9 (signed short, signed int, signed short);
extern signed int (*v10) (signed short, signed int, signed short);
unsigned int v11 (signed int, unsigned char);
unsigned int (*v12) (signed int, unsigned char) = v11;
extern signed int v13 (unsigned short, unsigned short, unsigned int, signed int);
extern signed int (*v14) (unsigned short, unsigned short, unsigned int, signed int);
extern unsigned int v15 (unsigned short, signed char, signed short);
extern unsigned int (*v16) (unsigned short, signed char, signed short);
extern void v17 (void);
extern void (*v18) (void);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern signed char v21 (signed char, signed int);
extern signed char (*v22) (signed char, signed int);
static signed int v23 (void);
static signed int (*v24) (void) = v23;
extern signed int v25 (signed char, signed int);
extern signed int (*v26) (signed char, signed int);
extern unsigned int v27 (unsigned short, signed short, signed int);
extern unsigned int (*v28) (unsigned short, signed short, signed int);
extern signed short v29 (signed char, unsigned int, unsigned short);
extern signed short (*v30) (signed char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v63 = -4;
signed int v62 = 0;
signed char v61 = -3;

static signed int v23 (void)
{
{
for (;;) {
unsigned short v66 = 7;
unsigned int v65 = 6U;
signed short v64 = -2;
trace++;
switch (trace)
{
case 8: 
return -3;
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
signed short v69 = -2;
unsigned char v68 = 5;
unsigned char v67 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed int v70, unsigned char v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = 2;
unsigned short v73 = 6;
signed short v72 = 0;
trace++;
switch (trace)
{
case 7: 
{
signed int v75;
v75 = v23 ();
history[history_index++] = (int)v75;
}
break;
case 9: 
{
unsigned short v76;
signed short v77;
signed int v78;
unsigned int v79;
v76 = v73 - 4;
v77 = v72 + v72;
v78 = 3 + v70;
v79 = v27 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 11: 
return 5U;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v80, signed char v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = 0;
unsigned short v83 = 7;
signed char v82 = -2;
trace++;
switch (trace)
{
case 5: 
return 4U;
default: abort ();
}
}
}
}
