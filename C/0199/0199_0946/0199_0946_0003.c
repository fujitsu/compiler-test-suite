#include <stdlib.h>
unsigned int v3 (unsigned short, signed int, signed char);
unsigned int (*v4) (unsigned short, signed int, signed char) = v3;
extern signed int v5 (unsigned char, unsigned int, signed int);
extern signed int (*v6) (unsigned char, unsigned int, signed int);
signed short v7 (signed char, signed int, signed short);
signed short (*v8) (signed char, signed int, signed short) = v7;
extern void v9 (unsigned char, signed char, unsigned int);
extern void (*v10) (unsigned char, signed char, unsigned int);
extern unsigned char v11 (unsigned char, unsigned short);
extern unsigned char (*v12) (unsigned char, unsigned short);
extern void v13 (unsigned char, unsigned short, signed short, unsigned int);
extern void (*v14) (unsigned char, unsigned short, signed short, unsigned int);
extern unsigned char v15 (signed char, signed int);
extern unsigned char (*v16) (signed char, signed int);
extern void v17 (unsigned int, unsigned char, signed int);
extern void (*v18) (unsigned int, unsigned char, signed int);
extern void v19 (unsigned char, unsigned char, unsigned short, unsigned int);
extern void (*v20) (unsigned char, unsigned char, unsigned short, unsigned int);
static signed short v21 (void);
static signed short (*v22) (void) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed char, signed int);
extern signed int (*v26) (signed char, signed int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (signed short, unsigned int);
extern unsigned char (*v30) (signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v96 = 2;
signed int v95 = -1;
unsigned short v94 = 2;

static signed short v21 (void)
{
{
for (;;) {
signed char v99 = 2;
unsigned short v98 = 2;
unsigned int v97 = 2U;
trace++;
switch (trace)
{
case 2: 
{
signed int v100;
v100 = v27 ();
history[history_index++] = (int)v100;
}
break;
case 4: 
{
signed int v101;
v101 = v27 ();
history[history_index++] = (int)v101;
}
break;
case 6: 
{
signed int v102;
v102 = v27 ();
history[history_index++] = (int)v102;
}
break;
case 8: 
{
signed int v103;
v103 = v27 ();
history[history_index++] = (int)v103;
}
break;
case 10: 
{
signed int v104;
v104 = v27 ();
history[history_index++] = (int)v104;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}

signed short v7 (signed char v105, signed int v106, signed short v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = 2;
unsigned short v109 = 4;
signed char v108 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v111, signed int v112, signed char v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned short v116 = 1;
signed char v115 = 0;
signed int v114 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed short v117;
v117 = v21 ();
history[history_index++] = (int)v117;
}
break;
case 13: 
return 1U;
default: abort ();
}
}
}
}
