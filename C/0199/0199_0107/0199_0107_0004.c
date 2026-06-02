#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
signed char v3 (unsigned int, unsigned int);
signed char (*v4) (unsigned int, unsigned int) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
signed char v7 (unsigned char);
signed char (*v8) (unsigned char) = v7;
unsigned short v9 (unsigned short, unsigned short, unsigned short);
unsigned short (*v10) (unsigned short, unsigned short, unsigned short) = v9;
extern unsigned char v11 (signed int, unsigned char, signed int, unsigned char);
extern unsigned char (*v12) (signed int, unsigned char, signed int, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (unsigned char, signed short, signed char, signed int);
extern unsigned int (*v16) (unsigned char, signed short, signed char, signed int);
extern unsigned char v17 (signed short, signed char);
extern unsigned char (*v18) (signed short, signed char);
extern signed short v19 (signed int, unsigned short, signed int, unsigned short);
extern signed short (*v20) (signed int, unsigned short, signed int, unsigned short);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern void v25 (void);
extern void (*v26) (void);
signed char v27 (signed short);
signed char (*v28) (signed short) = v27;
static signed short v29 (void);
static signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v98 = 4;
unsigned int v97 = 0U;
unsigned short v96 = 3;

static signed short v29 (void)
{
{
for (;;) {
unsigned int v101 = 0U;
signed short v100 = -2;
signed char v99 = -4;
trace++;
switch (trace)
{
case 2: 
return -2;
case 4: 
return 0;
default: abort ();
}
}
}
}

signed char v27 (signed short v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 7U;
signed char v104 = -4;
unsigned char v103 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed short v106;
v106 = v29 ();
history[history_index++] = (int)v106;
}
break;
case 3: 
{
signed short v107;
v107 = v29 ();
history[history_index++] = (int)v107;
}
break;
case 5: 
return -1;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v108, unsigned short v109, unsigned short v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = -4;
signed short v112 = -1;
signed int v111 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = -1;
unsigned int v116 = 3U;
unsigned int v115 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v118, unsigned int v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 7U;
signed char v121 = 1;
unsigned int v120 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
