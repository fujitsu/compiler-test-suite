#include <stdlib.h>
unsigned short v1 (unsigned short, signed char);
unsigned short (*v2) (unsigned short, signed char) = v1;
extern signed char v3 (signed int, unsigned int);
extern signed char (*v4) (signed int, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed int v9 (unsigned int, unsigned short);
extern signed int (*v10) (unsigned int, unsigned short);
extern void v11 (signed char, unsigned int);
extern void (*v12) (signed char, unsigned int);
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
extern unsigned short v15 (unsigned short, unsigned int, signed int);
extern unsigned short (*v16) (unsigned short, unsigned int, signed int);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern void v19 (unsigned short, unsigned short);
extern void (*v20) (unsigned short, unsigned short);
extern void v21 (signed int);
extern void (*v22) (signed int);
unsigned char v23 (unsigned char, signed char, signed char, unsigned int);
unsigned char (*v24) (unsigned char, signed char, signed char, unsigned int) = v23;
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
static signed int v27 (unsigned char);
static signed int (*v28) (unsigned char) = v27;
extern unsigned char v29 (signed short);
extern unsigned char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v89 = 2;
signed char v88 = -1;
signed char v87 = -1;

static signed int v27 (unsigned char v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = 0;
unsigned int v92 = 4U;
signed char v91 = 0;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned int v25 (void)
{
{
for (;;) {
signed short v96 = -2;
signed char v95 = 1;
signed short v94 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned char v97, signed char v98, signed char v99, unsigned int v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned short v103 = 6;
unsigned int v102 = 1U;
unsigned short v101 = 1;
trace++;
switch (trace)
{
case 2: 
return v97;
default: abort ();
}
}
}
}

unsigned short v1 (unsigned short v104, signed char v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned short v108 = 6;
unsigned char v107 = 4;
unsigned char v106 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v109;
unsigned int v110;
signed int v111;
unsigned short v112;
v109 = v104 + v108;
v110 = 3U - 6U;
v111 = -2 + 3;
v112 = v15 (v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 6: 
{
unsigned int v113;
unsigned short v114;
signed int v115;
v113 = 6U - 6U;
v114 = 5 - v108;
v115 = v9 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 8: 
{
unsigned char v116;
v116 = v7 ();
history[history_index++] = (int)v116;
}
break;
case 10: 
{
unsigned char v117;
signed int v118;
v117 = 3 - 5;
v118 = v27 (v117);
history[history_index++] = (int)v118;
}
break;
case 12: 
return v108;
default: abort ();
}
}
}
}
