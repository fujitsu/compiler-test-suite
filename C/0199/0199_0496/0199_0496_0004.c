#include <stdlib.h>
signed short v1 (unsigned int, unsigned short);
signed short (*v2) (unsigned int, unsigned short) = v1;
extern signed int v3 (signed short, signed char);
extern signed int (*v4) (signed short, signed char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern void v7 (unsigned char, unsigned char, signed int);
extern void (*v8) (unsigned char, unsigned char, signed int);
signed int v9 (signed int, signed char, signed char);
signed int (*v10) (signed int, signed char, signed char) = v9;
extern signed int v11 (unsigned short);
extern signed int (*v12) (unsigned short);
extern unsigned char v13 (unsigned short, unsigned char);
extern unsigned char (*v14) (unsigned short, unsigned char);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern unsigned short v17 (signed int);
extern unsigned short (*v18) (signed int);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern signed int v21 (signed char, unsigned short, unsigned short, signed int);
extern signed int (*v22) (signed char, unsigned short, unsigned short, signed int);
static signed int v23 (unsigned char, signed char);
static signed int (*v24) (unsigned char, signed char) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed short v27 (unsigned char, unsigned short, signed int);
extern signed short (*v28) (unsigned char, unsigned short, signed int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v101 = 0U;
unsigned int v100 = 3U;
unsigned int v99 = 7U;

static signed int v23 (unsigned char v102, signed char v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = -2;
unsigned int v105 = 4U;
signed char v104 = -2;
trace++;
switch (trace)
{
case 4: 
{
signed int v107;
v107 = v29 ();
history[history_index++] = (int)v107;
}
break;
case 6: 
{
signed int v108;
v108 = v29 ();
history[history_index++] = (int)v108;
}
break;
case 8: 
{
signed int v109;
v109 = v29 ();
history[history_index++] = (int)v109;
}
break;
case 10: 
return 0;
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
signed short v112 = -1;
unsigned char v111 = 3;
unsigned char v110 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed int v113, signed char v114, signed char v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = -3;
unsigned short v117 = 0;
unsigned char v116 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned int v119, unsigned short v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = -4;
signed short v122 = -2;
signed char v121 = 0;
trace++;
switch (trace)
{
case 0: 
return v122;
case 1: 
{
signed short v124;
v124 = v25 ();
history[history_index++] = (int)v124;
}
break;
case 3: 
{
unsigned char v125;
signed char v126;
signed int v127;
v125 = 6 + 6;
v126 = v123 - -2;
v127 = v23 (v125, v126);
history[history_index++] = (int)v127;
}
break;
case 11: 
return v122;
default: abort ();
}
}
}
}
