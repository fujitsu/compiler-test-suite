#include <stdlib.h>
extern signed short v1 (unsigned int);
extern signed short (*v2) (unsigned int);
extern unsigned char v3 (signed short, signed short);
extern unsigned char (*v4) (signed short, signed short);
extern unsigned int v5 (signed int, unsigned int);
extern unsigned int (*v6) (signed int, unsigned int);
extern unsigned char v7 (unsigned short, signed int, unsigned short);
extern unsigned char (*v8) (unsigned short, signed int, unsigned short);
unsigned int v9 (signed short, signed char, unsigned int);
unsigned int (*v10) (signed short, signed char, unsigned int) = v9;
extern unsigned char v11 (signed char, unsigned int);
extern unsigned char (*v12) (signed char, unsigned int);
extern signed char v13 (signed int, signed char, unsigned int, signed short);
extern signed char (*v14) (signed int, signed char, unsigned int, signed short);
extern signed char v15 (unsigned int, unsigned short, unsigned short, signed int);
extern signed char (*v16) (unsigned int, unsigned short, unsigned short, signed int);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
unsigned char v19 (signed short, unsigned char, unsigned short);
unsigned char (*v20) (signed short, unsigned char, unsigned short) = v19;
static unsigned short v21 (unsigned int);
static unsigned short (*v22) (unsigned int) = v21;
signed short v23 (void);
signed short (*v24) (void) = v23;
extern signed short v25 (unsigned char, unsigned char, signed int);
extern signed short (*v26) (unsigned char, unsigned char, signed int);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern unsigned char v29 (unsigned short, unsigned int, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v87 = 6;
unsigned short v86 = 6;
signed int v85 = -2;

signed short v23 (void)
{
{
for (;;) {
signed short v90 = 1;
signed char v89 = -1;
unsigned int v88 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v21 (unsigned int v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
unsigned char v94 = 1;
signed char v93 = -2;
signed int v92 = -3;
trace++;
switch (trace)
{
case 7: 
return 7;
default: abort ();
}
}
}
}

unsigned char v19 (signed short v95, unsigned char v96, unsigned short v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = -3;
unsigned char v99 = 4;
signed short v98 = -2;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v101;
unsigned short v102;
v101 = 2U - 7U;
v102 = v21 (v101);
history[history_index++] = (int)v102;
}
break;
case 8: 
{
unsigned int v103;
signed short v104;
v103 = 6U - 6U;
v104 = v1 (v103);
history[history_index++] = (int)v104;
}
break;
case 12: 
return v99;
default: abort ();
}
}
}
}

unsigned int v9 (signed short v105, signed char v106, unsigned int v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed char v110 = -3;
signed short v109 = -2;
unsigned char v108 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
