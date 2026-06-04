#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed short v7 (unsigned short, signed short, signed char);
extern signed short (*v8) (unsigned short, signed short, signed char);
void v9 (void);
void (*v10) (void) = v9;
extern unsigned char v11 (signed short, signed char, unsigned int, signed int);
extern unsigned char (*v12) (signed short, signed char, unsigned int, signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (signed char, unsigned int);
extern unsigned short (*v16) (signed char, unsigned int);
extern signed int v17 (signed short, signed int, signed char);
extern signed int (*v18) (signed short, signed int, signed char);
extern void v19 (signed int, signed char, signed short, signed short);
extern void (*v20) (signed int, signed char, signed short, signed short);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned short v23 (unsigned int);
extern unsigned short (*v24) (unsigned int);
extern void v25 (void);
extern void (*v26) (void);
unsigned char v29 (unsigned short, unsigned char);
unsigned char (*v30) (unsigned short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v125 = 1;
signed int v124 = 3;
signed char v123 = -3;

unsigned char v29 (unsigned short v126, unsigned char v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned int v130 = 5U;
signed char v129 = -3;
signed char v128 = -1;
trace++;
switch (trace)
{
case 4: 
return v127;
case 8: 
return v127;
case 10: 
return v127;
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
unsigned short v133 = 2;
unsigned int v132 = 7U;
signed int v131 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
