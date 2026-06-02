#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed short, unsigned short);
extern unsigned char (*v2) (unsigned int, signed short, unsigned short);
extern signed char v3 (signed int, signed char);
extern signed char (*v4) (signed int, signed char);
extern unsigned int v5 (unsigned short, signed short, unsigned char);
extern unsigned int (*v6) (unsigned short, signed short, unsigned char);
void v7 (void);
void (*v8) (void) = v7;
signed char v9 (signed short, unsigned short, signed int, unsigned char);
signed char (*v10) (signed short, unsigned short, signed int, unsigned char) = v9;
extern void v11 (unsigned char, signed int, unsigned int, signed int);
extern void (*v12) (unsigned char, signed int, unsigned int, signed int);
extern void v13 (signed short, unsigned char);
extern void (*v14) (signed short, unsigned char);
static signed char v15 (void);
static signed char (*v16) (void) = v15;
extern unsigned short v17 (unsigned int, unsigned char, signed int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned char, signed int, unsigned short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern unsigned char v27 (unsigned short, unsigned char, unsigned char, unsigned int);
extern unsigned char (*v28) (unsigned short, unsigned char, unsigned char, unsigned int);
extern signed char v29 (unsigned short, signed int);
extern signed char (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v105 = 2;
signed short v104 = 3;
unsigned int v103 = 4U;

signed char v25 (void)
{
{
for (;;) {
unsigned int v108 = 6U;
signed char v107 = -3;
unsigned char v106 = 7;
trace++;
switch (trace)
{
case 3: 
return -4;
default: abort ();
}
}
}
}

static signed char v15 (void)
{
{
for (;;) {
unsigned short v111 = 7;
signed int v110 = 3;
unsigned char v109 = 0;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v112;
v112 = v19 ();
history[history_index++] = (int)v112;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}

signed char v9 (signed short v113, unsigned short v114, signed int v115, unsigned char v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned char v119 = 0;
signed char v118 = -3;
unsigned char v117 = 7;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v120;
unsigned short v121;
v120 = v114 + 2;
v121 = v21 (v120);
history[history_index++] = (int)v121;
}
break;
case 5: 
{
signed char v122;
v122 = v15 ();
history[history_index++] = (int)v122;
}
break;
case 13: 
return v118;
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
signed short v125 = 3;
signed short v124 = -1;
unsigned short v123 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
