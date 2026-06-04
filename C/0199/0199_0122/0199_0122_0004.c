#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
signed char v3 (unsigned char);
signed char (*v4) (unsigned char) = v3;
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
signed char v7 (unsigned short);
signed char (*v8) (unsigned short) = v7;
extern signed int v9 (unsigned short, signed int, signed short, unsigned int);
extern signed int (*v10) (unsigned short, signed int, signed short, unsigned int);
extern signed char v11 (signed char);
extern signed char (*v12) (signed char);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern signed char v15 (signed char, unsigned int, signed int);
extern signed char (*v16) (signed char, unsigned int, signed int);
extern signed short v17 (signed short, signed short, unsigned char);
extern signed short (*v18) (signed short, signed short, unsigned char);
extern unsigned char v19 (unsigned char, signed char);
extern unsigned char (*v20) (unsigned char, signed char);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed char v23 (signed int, unsigned int, signed char);
extern signed char (*v24) (signed int, unsigned int, signed char);
extern void v25 (unsigned int, signed short, unsigned char);
extern void (*v26) (unsigned int, signed short, unsigned char);
signed short v29 (signed char, unsigned char, unsigned short, signed int);
signed short (*v30) (signed char, unsigned char, unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v128 = 6U;
unsigned char v127 = 4;
signed int v126 = 1;

signed short v29 (signed char v129, unsigned char v130, unsigned short v131, signed int v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned char v135 = 5;
signed int v134 = 3;
signed char v133 = 0;
trace++;
switch (trace)
{
case 4: 
return 2;
case 6: 
return -1;
case 8: 
return -1;
case 10: 
return 0;
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
signed int v138 = -1;
unsigned char v137 = 7;
signed short v136 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned short v139)
{
history[history_index++] = (int)v139;
{
for (;;) {
unsigned int v142 = 1U;
unsigned int v141 = 6U;
signed int v140 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned char v145 = 4;
signed int v144 = 0;
unsigned int v143 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned char v146)
{
history[history_index++] = (int)v146;
{
for (;;) {
signed char v149 = -3;
unsigned int v148 = 7U;
signed char v147 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
