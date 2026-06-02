#include <stdlib.h>
void v1 (unsigned short, signed char);
void (*v2) (unsigned short, signed char) = v1;
extern unsigned char v3 (unsigned int, signed char, unsigned int);
extern unsigned char (*v4) (unsigned int, signed char, unsigned int);
extern signed int v5 (signed char, signed int);
extern signed int (*v6) (signed char, signed int);
extern signed short v7 (signed int, unsigned char, signed short, signed char);
extern signed short (*v8) (signed int, unsigned char, signed short, signed char);
extern unsigned char v9 (unsigned short, unsigned int);
extern unsigned char (*v10) (unsigned short, unsigned int);
extern signed int v11 (signed int);
extern signed int (*v12) (signed int);
extern unsigned int v13 (unsigned char, signed short);
extern unsigned int (*v14) (unsigned char, signed short);
extern unsigned char v15 (unsigned int, signed short, unsigned int);
extern unsigned char (*v16) (unsigned int, signed short, unsigned int);
extern signed int v17 (unsigned int, unsigned char, signed short);
extern signed int (*v18) (unsigned int, unsigned char, signed short);
static unsigned char v19 (void);
static unsigned char (*v20) (void) = v19;
extern signed char v21 (unsigned short, unsigned char, unsigned char, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char, unsigned char, unsigned char);
signed short v23 (void);
signed short (*v24) (void) = v23;
static unsigned char v27 (unsigned short, unsigned int);
static unsigned char (*v28) (unsigned short, unsigned int) = v27;
extern void v29 (signed char, signed int, signed int, unsigned int);
extern void (*v30) (signed char, signed int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v92 = 1;
unsigned int v91 = 0U;
signed int v90 = -1;

static unsigned char v27 (unsigned short v93, unsigned int v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = 1;
unsigned short v96 = 3;
signed int v95 = 3;
trace++;
switch (trace)
{
case 2: 
return 2;
default: abort ();
}
}
}
}

signed short v23 (void)
{
{
for (;;) {
unsigned char v100 = 2;
unsigned char v99 = 5;
signed short v98 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v19 (void)
{
{
for (;;) {
unsigned short v103 = 3;
signed short v102 = -1;
signed char v101 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v104;
unsigned int v105;
unsigned char v106;
v104 = 5 - v103;
v105 = 1U + 4U;
v106 = v27 (v104, v105);
history[history_index++] = (int)v106;
}
break;
case 3: 
{
signed int v107;
signed int v108;
v107 = 3 - 0;
v108 = v11 (v107);
history[history_index++] = (int)v108;
}
break;
case 15: 
return 5;
default: abort ();
}
}
}
}

void v1 (unsigned short v109, signed char v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = -3;
signed short v112 = 2;
signed char v111 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v114;
v114 = v19 ();
history[history_index++] = (int)v114;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}
