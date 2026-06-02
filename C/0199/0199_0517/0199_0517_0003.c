#include <stdlib.h>
unsigned int v1 (unsigned short);
unsigned int (*v2) (unsigned short) = v1;
extern unsigned char v3 (unsigned char, unsigned char, signed int, signed short);
extern unsigned char (*v4) (unsigned char, unsigned char, signed int, signed short);
extern signed char v5 (unsigned short, signed int, signed int);
extern signed char (*v6) (unsigned short, signed int, signed int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned int v11 (signed short, signed short, signed int);
extern unsigned int (*v12) (signed short, signed short, signed int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
static signed short v15 (signed int);
static signed short (*v16) (signed int) = v15;
static unsigned char v17 (void);
static unsigned char (*v18) (void) = v17;
extern void v19 (signed char, signed char);
extern void (*v20) (signed char, signed char);
extern signed int v21 (signed int, signed int, signed char);
extern signed int (*v22) (signed int, signed int, signed char);
extern signed char v23 (unsigned char, unsigned short);
extern signed char (*v24) (unsigned char, unsigned short);
extern unsigned short v25 (unsigned short, signed short, signed int, unsigned char);
extern unsigned short (*v26) (unsigned short, signed short, signed int, unsigned char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned int v29 (unsigned short, signed char, unsigned short, unsigned short);
extern unsigned int (*v30) (unsigned short, signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v98 = 3;
unsigned short v97 = 0;
signed int v96 = -2;

static unsigned char v17 (void)
{
{
for (;;) {
signed int v101 = 1;
signed short v100 = 0;
signed short v99 = -1;
trace++;
switch (trace)
{
case 7: 
return 4;
default: abort ();
}
}
}
}

static signed short v15 (signed int v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
unsigned short v105 = 3;
signed short v104 = -1;
signed short v103 = -3;
trace++;
switch (trace)
{
case 9: 
return v103;
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 2;
signed char v108 = -3;
signed char v107 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v110;
v110 = v27 ();
history[history_index++] = (int)v110;
}
break;
case 6: 
{
unsigned char v111;
v111 = v17 ();
history[history_index++] = (int)v111;
}
break;
case 8: 
{
signed int v112;
signed short v113;
v112 = -2 + -4;
v113 = v15 (v112);
history[history_index++] = (int)v113;
}
break;
case 10: 
{
unsigned short v114;
signed int v115;
signed int v116;
signed char v117;
v114 = 6 - v106;
v115 = 3 + -4;
v116 = 3 + 1;
v117 = v5 (v114, v115, v116);
history[history_index++] = (int)v117;
}
break;
case 12: 
return 7U;
default: abort ();
}
}
}
}
