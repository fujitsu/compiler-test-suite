#include <stdlib.h>
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
signed short v5 (signed int, signed int, signed short, unsigned short);
signed short (*v6) (signed int, signed int, signed short, unsigned short) = v5;
extern unsigned char v7 (unsigned short, unsigned short, unsigned int);
extern unsigned char (*v8) (unsigned short, unsigned short, unsigned int);
extern void v9 (signed char);
extern void (*v10) (signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
unsigned char v13 (signed char, unsigned char);
unsigned char (*v14) (signed char, unsigned char) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (unsigned int, unsigned short, unsigned int);
extern unsigned char (*v18) (unsigned int, unsigned short, unsigned int);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed short v23 (unsigned int);
extern signed short (*v24) (unsigned int);
signed char v25 (void);
signed char (*v26) (void) = v25;
unsigned int v27 (unsigned char, unsigned char, unsigned char);
unsigned int (*v28) (unsigned char, unsigned char, unsigned char) = v27;
extern void v29 (unsigned int, unsigned int, signed char, signed short);
extern void (*v30) (unsigned int, unsigned int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v130 = 2;
signed char v129 = 2;
unsigned short v128 = 4;

unsigned int v27 (unsigned char v131, unsigned char v132, unsigned char v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 1;
signed int v135 = -1;
signed int v134 = 0;
trace++;
switch (trace)
{
case 2: 
return 5U;
case 10: 
return 3U;
default: abort ();
}
}
}
}

signed char v25 (void)
{
{
for (;;) {
signed char v139 = -1;
unsigned char v138 = 2;
signed short v137 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed char v140, unsigned char v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed short v144 = 3;
signed char v143 = -4;
signed int v142 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed int v145, signed int v146, signed short v147, unsigned short v148)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed short v151 = -4;
unsigned char v150 = 1;
signed char v149 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
