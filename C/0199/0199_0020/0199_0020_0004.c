#include <stdlib.h>
extern signed char v1 (unsigned short, unsigned int, signed short);
extern signed char (*v2) (unsigned short, unsigned int, signed short);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern unsigned int v5 (unsigned short, signed int);
extern unsigned int (*v6) (unsigned short, signed int);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern unsigned char v9 (signed char, unsigned short, unsigned char);
extern unsigned char (*v10) (signed char, unsigned short, unsigned char);
extern unsigned int v13 (unsigned int, signed char, signed int);
extern unsigned int (*v14) (unsigned int, signed char, signed int);
signed int v15 (signed int);
signed int (*v16) (signed int) = v15;
extern unsigned short v17 (signed short);
extern unsigned short (*v18) (signed short);
unsigned short v19 (signed char, signed short);
unsigned short (*v20) (signed char, signed short) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
signed short v23 (signed int, signed char, signed char, signed short);
signed short (*v24) (signed int, signed char, signed char, signed short) = v23;
signed int v25 (void);
signed int (*v26) (void) = v25;
extern void v27 (void);
extern void (*v28) (void);
unsigned char v29 (unsigned char);
unsigned char (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v130 = 3;
signed short v129 = -3;
unsigned int v128 = 3U;

unsigned char v29 (unsigned char v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 5U;
unsigned int v133 = 2U;
signed short v132 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
unsigned int v137 = 5U;
signed char v136 = -3;
unsigned char v135 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed int v138, signed char v139, signed char v140, signed short v141)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed char v144 = 3;
signed int v143 = -4;
signed short v142 = 0;
trace++;
switch (trace)
{
case 3: 
return v141;
case 5: 
return v141;
case 7: 
return v142;
case 9: 
return -3;
case 11: 
return v142;
default: abort ();
}
}
}
}

unsigned short v19 (signed char v145, signed short v146)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned short v149 = 4;
signed char v148 = 2;
unsigned int v147 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed int v150)
{
history[history_index++] = (int)v150;
{
for (;;) {
unsigned short v153 = 3;
signed short v152 = 3;
signed short v151 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
