#include <stdlib.h>
unsigned int v3 (unsigned int);
unsigned int (*v4) (unsigned int) = v3;
extern signed char v5 (unsigned char, signed short);
extern signed char (*v6) (unsigned char, signed short);
extern signed int v7 (unsigned char, signed short);
extern signed int (*v8) (unsigned char, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern unsigned short v15 (signed char, signed char, unsigned char, signed char);
extern unsigned short (*v16) (signed char, signed char, unsigned char, signed char);
extern void v17 (signed char, unsigned char, signed char);
extern void (*v18) (signed char, unsigned char, signed char);
extern unsigned short v19 (unsigned int, signed int, signed char);
extern unsigned short (*v20) (unsigned int, signed int, signed char);
extern void v21 (signed short, signed char, unsigned int);
extern void (*v22) (signed short, signed char, unsigned int);
extern signed int v23 (unsigned short);
extern signed int (*v24) (unsigned short);
void v25 (unsigned short, signed short);
void (*v26) (unsigned short, signed short) = v25;
extern unsigned short v27 (signed short, unsigned int, unsigned short, unsigned int);
extern unsigned short (*v28) (signed short, unsigned int, unsigned short, unsigned int);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v132 = -1;
unsigned char v131 = 4;
unsigned int v130 = 6U;

signed int v29 (void)
{
{
for (;;) {
signed short v135 = -1;
unsigned int v134 = 0U;
signed int v133 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (unsigned short v136, signed short v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned short v140 = 1;
signed char v139 = -1;
signed int v138 = -4;
trace++;
switch (trace)
{
case 5: 
return;
case 7: 
return;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v141)
{
history[history_index++] = (int)v141;
{
for (;;) {
unsigned int v144 = 5U;
unsigned int v143 = 2U;
signed int v142 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
