#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned int);
extern unsigned int (*v2) (signed char, unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
unsigned char v7 (signed char);
unsigned char (*v8) (signed char) = v7;
extern unsigned short v9 (unsigned short, unsigned short, unsigned int);
extern unsigned short (*v10) (unsigned short, unsigned short, unsigned int);
extern void v11 (unsigned char, signed short);
extern void (*v12) (unsigned char, signed short);
extern void v13 (signed short, signed int, signed short);
extern void (*v14) (signed short, signed int, signed short);
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
static void v17 (void);
static void (*v18) (void) = v17;
extern signed short v19 (unsigned short, unsigned char, unsigned short);
extern signed short (*v20) (unsigned short, unsigned char, unsigned short);
extern unsigned int v21 (signed char, unsigned short, unsigned int);
extern unsigned int (*v22) (signed char, unsigned short, unsigned int);
extern unsigned int v23 (signed char, unsigned short, unsigned char, signed int);
extern unsigned int (*v24) (signed char, unsigned short, unsigned char, signed int);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
extern signed short v27 (signed int, unsigned char, unsigned int, signed char);
extern signed short (*v28) (signed int, unsigned char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v101 = -1;
signed short v100 = -4;
unsigned short v99 = 6;

static void v17 (void)
{
{
for (;;) {
signed int v104 = 1;
signed int v103 = 1;
signed short v102 = 1;
trace++;
switch (trace)
{
case 8: 
{
signed char v105;
unsigned short v106;
unsigned int v107;
unsigned int v108;
v105 = 0 - 3;
v106 = 7 - 6;
v107 = 4U + 4U;
v108 = v21 (v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 10: 
{
signed char v109;
unsigned short v110;
unsigned int v111;
unsigned int v112;
v109 = 2 - 2;
v110 = 7 + 3;
v111 = 0U + 0U;
v112 = v21 (v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned char v7 (signed char v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
signed short v116 = 3;
unsigned char v115 = 4;
signed short v114 = 1;
trace++;
switch (trace)
{
case 7: 
{
v17 ();
}
break;
case 13: 
return v115;
default: abort ();
}
}
}
}
