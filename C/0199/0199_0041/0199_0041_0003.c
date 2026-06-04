#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned char v3 (signed short, unsigned char, signed int, unsigned char);
extern unsigned char (*v4) (signed short, unsigned char, signed int, unsigned char);
void v5 (void);
void (*v6) (void) = v5;
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
extern signed char v9 (signed char, unsigned int, unsigned short);
extern signed char (*v10) (signed char, unsigned int, unsigned short);
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
extern signed char v13 (unsigned int, unsigned char, unsigned int, signed int);
extern signed char (*v14) (unsigned int, unsigned char, unsigned int, signed int);
extern signed short v15 (unsigned char, signed char, unsigned char, signed int);
extern signed short (*v16) (unsigned char, signed char, unsigned char, signed int);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
signed short v19 (unsigned int, signed int, unsigned short, unsigned int);
signed short (*v20) (unsigned int, signed int, unsigned short, unsigned int) = v19;
void v21 (unsigned short, unsigned short);
void (*v22) (unsigned short, unsigned short) = v21;
extern unsigned char v23 (unsigned char, signed short, unsigned int);
extern unsigned char (*v24) (unsigned char, signed short, unsigned int);
extern signed char v25 (unsigned char, unsigned int);
extern signed char (*v26) (unsigned char, unsigned int);
static unsigned char v27 (void);
static unsigned char (*v28) (void) = v27;
unsigned short v29 (signed int, signed int);
unsigned short (*v30) (signed int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v92 = 7;
unsigned int v91 = 5U;
signed int v90 = -2;

unsigned short v29 (signed int v93, signed int v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = 0;
unsigned short v96 = 0;
signed char v95 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v27 (void)
{
{
for (;;) {
unsigned short v100 = 5;
signed short v99 = 2;
signed short v98 = 1;
trace++;
switch (trace)
{
case 5: 
return 0;
default: abort ();
}
}
}
}

void v21 (unsigned short v101, unsigned short v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned short v105 = 0;
unsigned short v104 = 1;
unsigned char v103 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned int v106, signed int v107, unsigned short v108, unsigned int v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed short v112 = -3;
signed char v111 = -4;
unsigned int v110 = 4U;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v113;
unsigned int v114;
signed char v115;
v113 = 3 - 5;
v114 = v106 + v110;
v115 = v25 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 4: 
{
unsigned char v116;
v116 = v27 ();
history[history_index++] = (int)v116;
}
break;
case 6: 
return v112;
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
signed short v119 = 0;
signed short v118 = 3;
unsigned short v117 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
