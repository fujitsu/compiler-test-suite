#include <stdlib.h>
extern unsigned char v3 (signed int, signed short, unsigned char);
extern unsigned char (*v4) (signed int, signed short, unsigned char);
extern unsigned short v5 (signed short, unsigned char, unsigned int, signed char);
extern unsigned short (*v6) (signed short, unsigned char, unsigned int, signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed short v9 (unsigned char, signed short, signed char, unsigned short);
extern signed short (*v10) (unsigned char, signed short, signed char, unsigned short);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned int v13 (signed char, unsigned short, unsigned char);
extern unsigned int (*v14) (signed char, unsigned short, unsigned char);
extern unsigned int v15 (signed int, unsigned char, unsigned short);
extern unsigned int (*v16) (signed int, unsigned char, unsigned short);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern unsigned short v19 (signed char, unsigned char, signed int, unsigned char);
extern unsigned short (*v20) (signed char, unsigned char, signed int, unsigned char);
extern signed int v21 (unsigned short, unsigned short);
extern signed int (*v22) (unsigned short, unsigned short);
void v23 (signed int, signed int, signed short);
void (*v24) (signed int, signed int, signed short) = v23;
extern unsigned short v25 (signed int, signed short, signed short, signed int);
extern unsigned short (*v26) (signed int, signed short, signed short, signed int);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern signed int v29 (unsigned short, unsigned int, signed short);
extern signed int (*v30) (unsigned short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v140 = 7;
unsigned char v139 = 2;
signed char v138 = -3;

signed short v27 (void)
{
{
for (;;) {
unsigned int v143 = 1U;
unsigned short v142 = 7;
signed short v141 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed int v144, signed int v145, signed short v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned short v149 = 5;
unsigned short v148 = 1;
signed char v147 = 1;
trace++;
switch (trace)
{
case 4: 
return;
case 6: 
return;
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}
