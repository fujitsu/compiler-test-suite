#include <stdlib.h>
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
extern unsigned char v9 (unsigned int, unsigned int);
extern unsigned char (*v10) (unsigned int, unsigned int);
void v11 (unsigned int, unsigned char, signed char, unsigned char);
void (*v12) (unsigned int, unsigned char, signed char, unsigned char) = v11;
signed int v13 (unsigned short, signed char);
signed int (*v14) (unsigned short, signed char) = v13;
extern signed short v15 (signed char, unsigned short);
extern signed short (*v16) (signed char, unsigned short);
extern unsigned char v17 (signed short, signed char, signed short);
extern unsigned char (*v18) (signed short, signed char, signed short);
extern unsigned char v19 (unsigned int, unsigned int, unsigned short, unsigned char);
extern unsigned char (*v20) (unsigned int, unsigned int, unsigned short, unsigned char);
signed char v21 (unsigned short, signed int, signed char);
signed char (*v22) (unsigned short, signed int, signed char) = v21;
extern signed int v23 (unsigned int, signed int, unsigned short, unsigned char);
extern signed int (*v24) (unsigned int, signed int, unsigned short, unsigned char);
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
extern unsigned char v27 (unsigned short, signed int, unsigned char);
extern unsigned char (*v28) (unsigned short, signed int, unsigned char);
extern unsigned int v29 (unsigned char, signed char);
extern unsigned int (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v125 = -3;
signed int v124 = 2;
signed short v123 = -1;

signed char v21 (unsigned short v126, signed int v127, signed char v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = 0;
signed char v130 = 2;
signed char v129 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned short v132, signed char v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 6U;
unsigned char v135 = 4;
signed short v134 = 0;
trace++;
switch (trace)
{
case 2: 
return -4;
case 4: 
return 1;
case 6: 
return -4;
case 8: 
return 2;
case 10: 
return -1;
default: abort ();
}
}
}
}

void v11 (unsigned int v137, unsigned char v138, signed char v139, unsigned char v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned int v143 = 1U;
signed short v142 = 0;
signed short v141 = 1;
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
signed int v146 = -3;
unsigned int v145 = 3U;
signed char v144 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
