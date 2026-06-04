#include <stdlib.h>
signed int v1 (unsigned char, signed char, signed int);
signed int (*v2) (unsigned char, signed char, signed int) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
static unsigned int v5 (void);
static unsigned int (*v6) (void) = v5;
unsigned short v7 (signed short);
unsigned short (*v8) (signed short) = v7;
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned short v15 (signed int, signed int, unsigned char, unsigned char);
extern unsigned short (*v16) (signed int, signed int, unsigned char, unsigned char);
void v17 (void);
void (*v18) (void) = v17;
extern unsigned short v19 (unsigned short, unsigned short);
extern unsigned short (*v20) (unsigned short, unsigned short);
extern signed char v21 (signed short, unsigned char);
extern signed char (*v22) (signed short, unsigned char);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern unsigned short v27 (signed int, signed short);
extern unsigned short (*v28) (signed int, signed short);
extern signed int v29 (signed short, signed char, unsigned char, unsigned short);
extern signed int (*v30) (signed short, signed char, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v91 = 5;
signed char v90 = 2;
signed int v89 = 3;

void v17 (void)
{
{
for (;;) {
signed char v94 = 3;
unsigned int v93 = 3U;
unsigned short v92 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
signed char v98 = -4;
unsigned int v97 = 4U;
signed int v96 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v5 (void)
{
{
for (;;) {
unsigned char v101 = 4;
signed short v100 = -4;
signed char v99 = -4;
trace++;
switch (trace)
{
case 1: 
{
signed int v102;
unsigned char v103;
v102 = -4 + 2;
v103 = v23 (v102);
history[history_index++] = (int)v103;
}
break;
case 3: 
return 5U;
default: abort ();
}
}
}
}

signed int v1 (unsigned char v104, signed char v105, signed int v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 2;
unsigned int v108 = 4U;
unsigned int v107 = 7U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v110;
v110 = v5 ();
history[history_index++] = (int)v110;
}
break;
case 4: 
{
unsigned short v111;
v111 = v3 ();
history[history_index++] = (int)v111;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
