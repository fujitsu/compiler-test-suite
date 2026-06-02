#include <stdlib.h>
signed int v3 (unsigned short, unsigned char, unsigned short);
signed int (*v4) (unsigned short, unsigned char, unsigned short) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (unsigned short, unsigned short);
extern signed short (*v8) (unsigned short, unsigned short);
extern signed char v9 (signed int, signed char, unsigned int, unsigned int);
extern signed char (*v10) (signed int, signed char, unsigned int, unsigned int);
extern void v11 (signed short, unsigned short, signed char, unsigned char);
extern void (*v12) (signed short, unsigned short, signed char, unsigned char);
extern signed int v13 (unsigned char, signed int, unsigned int);
extern signed int (*v14) (unsigned char, signed int, unsigned int);
signed int v15 (signed short, unsigned short, signed int, signed char);
signed int (*v16) (signed short, unsigned short, signed int, signed char) = v15;
extern signed char v17 (unsigned int, unsigned char, unsigned int, unsigned int);
extern signed char (*v18) (unsigned int, unsigned char, unsigned int, unsigned int);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern signed char v21 (unsigned char, signed short);
extern signed char (*v22) (unsigned char, signed short);
extern unsigned char v23 (unsigned char, signed char, unsigned short, signed char);
extern unsigned char (*v24) (unsigned char, signed char, unsigned short, signed char);
void v25 (void);
void (*v26) (void) = v25;
extern signed int v29 (signed short, unsigned short, signed int, signed int);
extern signed int (*v30) (signed short, unsigned short, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v133 = 6;
signed short v132 = 3;
signed int v131 = -3;

void v25 (void)
{
{
for (;;) {
unsigned char v136 = 7;
unsigned char v135 = 0;
unsigned char v134 = 4;
trace++;
switch (trace)
{
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed int v15 (signed short v137, unsigned short v138, signed int v139, signed char v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned char v143 = 4;
unsigned char v142 = 2;
unsigned short v141 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned short v144, unsigned char v145, unsigned short v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed int v149 = 3;
unsigned short v148 = 7;
signed int v147 = -1;
trace++;
switch (trace)
{
case 4: 
return 3;
default: abort ();
}
}
}
}
