#include <stdlib.h>
extern signed char v3 (unsigned int, unsigned int);
extern signed char (*v4) (unsigned int, unsigned int);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern unsigned char v9 (unsigned short, unsigned short);
extern unsigned char (*v10) (unsigned short, unsigned short);
extern unsigned int v11 (signed char, unsigned short);
extern unsigned int (*v12) (signed char, unsigned short);
extern signed char v13 (unsigned short, unsigned int);
extern signed char (*v14) (unsigned short, unsigned int);
void v15 (void);
void (*v16) (void) = v15;
unsigned char v17 (signed short, unsigned char, signed int, signed char);
unsigned char (*v18) (signed short, unsigned char, signed int, signed char) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (unsigned char, unsigned int, signed int, unsigned int);
extern signed int (*v22) (unsigned char, unsigned int, signed int, unsigned int);
extern signed short v23 (signed char, unsigned char, unsigned char, unsigned char);
extern signed short (*v24) (signed char, unsigned char, unsigned char, unsigned char);
extern signed char v25 (signed int, signed int, signed short);
extern signed char (*v26) (signed int, signed int, signed short);
unsigned int v27 (signed short);
unsigned int (*v28) (signed short) = v27;
extern unsigned int v29 (unsigned char, unsigned int, unsigned char, signed int);
extern unsigned int (*v30) (unsigned char, unsigned int, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v131 = -1;
unsigned int v130 = 6U;
signed int v129 = -1;

unsigned int v27 (signed short v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
unsigned char v135 = 3;
signed int v134 = -4;
unsigned int v133 = 6U;
trace++;
switch (trace)
{
case 7: 
return 7U;
case 10: 
return v133;
default: abort ();
}
}
}
}

unsigned char v17 (signed short v136, unsigned char v137, signed int v138, signed char v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned int v142 = 6U;
signed int v141 = 3;
unsigned short v140 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
unsigned short v145 = 7;
unsigned short v144 = 3;
unsigned char v143 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
