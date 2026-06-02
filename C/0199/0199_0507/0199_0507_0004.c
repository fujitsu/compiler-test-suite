#include <stdlib.h>
extern void v1 (unsigned int, signed short, signed int, signed int);
extern void (*v2) (unsigned int, signed short, signed int, signed int);
extern unsigned short v5 (signed int, unsigned int, signed char, signed int);
extern unsigned short (*v6) (signed int, unsigned int, signed char, signed int);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
void v9 (unsigned char, unsigned short, signed short, signed int);
void (*v10) (unsigned char, unsigned short, signed short, signed int) = v9;
extern signed int v11 (unsigned short, signed int, signed int, signed int);
extern signed int (*v12) (unsigned short, signed int, signed int, signed int);
signed int v13 (signed short);
signed int (*v14) (signed short) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern signed int v19 (unsigned int, signed int);
extern signed int (*v20) (unsigned int, signed int);
extern signed char v21 (unsigned char, signed int, unsigned short, unsigned short);
extern signed char (*v22) (unsigned char, signed int, unsigned short, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
signed int v25 (void);
signed int (*v26) (void) = v25;
extern void v27 (unsigned char, signed char);
extern void (*v28) (unsigned char, signed char);
signed int v29 (signed short, unsigned int, signed short, signed char);
signed int (*v30) (signed short, unsigned int, signed short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v128 = 1;
signed short v127 = 1;
unsigned int v126 = 3U;

signed int v29 (signed short v129, unsigned int v130, signed short v131, signed char v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned char v135 = 7;
signed char v134 = -1;
unsigned short v133 = 1;
trace++;
switch (trace)
{
case 4: 
return 2;
case 9: 
return 1;
case 11: 
return -2;
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
signed char v138 = -3;
unsigned int v137 = 1U;
signed int v136 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed short v139)
{
history[history_index++] = (int)v139;
{
for (;;) {
unsigned char v142 = 0;
unsigned int v141 = 0U;
signed short v140 = 3;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}

void v9 (unsigned char v143, unsigned short v144, signed short v145, signed int v146)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed int v149 = 2;
signed char v148 = 1;
unsigned char v147 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
