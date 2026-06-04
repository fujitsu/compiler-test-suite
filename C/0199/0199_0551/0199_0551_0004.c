#include <stdlib.h>
extern signed char v1 (signed short, signed short, signed short);
extern signed char (*v2) (signed short, signed short, signed short);
extern unsigned short v3 (unsigned short, signed int, unsigned char);
extern unsigned short (*v4) (unsigned short, signed int, unsigned char);
extern unsigned int v5 (signed char, signed int, unsigned int);
extern unsigned int (*v6) (signed char, signed int, unsigned int);
unsigned char v7 (signed short, unsigned int, unsigned int);
unsigned char (*v8) (signed short, unsigned int, unsigned int) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed int v11 (void);
extern signed int (*v12) (void);
static void v13 (signed int);
static void (*v14) (signed int) = v13;
signed int v15 (unsigned char, signed int, unsigned char);
signed int (*v16) (unsigned char, signed int, unsigned char) = v15;
static signed short v17 (void);
static signed short (*v18) (void) = v17;
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern unsigned short v21 (unsigned short, signed short, unsigned char);
extern unsigned short (*v22) (unsigned short, signed short, unsigned char);
extern unsigned int v23 (signed char, unsigned char, signed char, unsigned int);
extern unsigned int (*v24) (signed char, unsigned char, signed char, unsigned int);
extern unsigned int v25 (signed short, signed char, signed char);
extern unsigned int (*v26) (signed short, signed char, signed char);
extern unsigned short v27 (unsigned short, signed short);
extern unsigned short (*v28) (unsigned short, signed short);
extern unsigned char v29 (signed int, signed short);
extern unsigned char (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v131 = -2;
signed char v130 = 2;
unsigned int v129 = 2U;

static signed short v17 (void)
{
{
for (;;) {
signed short v134 = -3;
signed int v133 = -1;
signed char v132 = -1;
trace++;
switch (trace)
{
case 4: 
return v134;
default: abort ();
}
}
}
}

signed int v15 (unsigned char v135, signed int v136, unsigned char v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = 0;
unsigned char v139 = 4;
signed char v138 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v13 (signed int v141)
{
history[history_index++] = (int)v141;
{
for (;;) {
signed char v144 = -1;
signed char v143 = -3;
signed short v142 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed short v145;
v145 = v17 ();
history[history_index++] = (int)v145;
}
break;
case 5: 
{
unsigned short v146;
signed short v147;
unsigned char v148;
unsigned short v149;
v146 = 5 - 7;
v147 = 2 + v142;
v148 = 4 - 2;
v149 = v21 (v146, v147, v148);
history[history_index++] = (int)v149;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}

unsigned char v7 (signed short v150, unsigned int v151, unsigned int v152)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
signed short v155 = 2;
signed short v154 = 3;
signed int v153 = 3;
trace++;
switch (trace)
{
case 2: 
{
signed int v156;
v156 = 2 + 0;
v13 (v156);
}
break;
case 16: 
return 7;
default: abort ();
}
}
}
}
