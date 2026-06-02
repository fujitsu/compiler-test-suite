#include <stdlib.h>
extern signed char v3 (signed short);
extern signed char (*v4) (signed short);
extern signed char v5 (signed int, signed short, signed int, signed char);
extern signed char (*v6) (signed int, signed short, signed int, signed char);
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
extern signed char v11 (unsigned int, signed short, unsigned short, unsigned int);
extern signed char (*v12) (unsigned int, signed short, unsigned short, unsigned int);
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
extern unsigned int v15 (unsigned short, unsigned char, unsigned int);
extern unsigned int (*v16) (unsigned short, unsigned char, unsigned int);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
unsigned short v23 (unsigned int, unsigned short, unsigned short, unsigned int);
unsigned short (*v24) (unsigned int, unsigned short, unsigned short, unsigned int) = v23;
extern void v25 (signed int, unsigned int);
extern void (*v26) (signed int, unsigned int);
void v27 (void);
void (*v28) (void) = v27;
extern unsigned short v29 (signed int, unsigned char, signed short, signed int);
extern unsigned short (*v30) (signed int, unsigned char, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v107 = -1;
signed short v106 = -2;
signed short v105 = 0;

void v27 (void)
{
{
for (;;) {
signed char v110 = -3;
unsigned short v109 = 5;
signed int v108 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (unsigned int v111, unsigned short v112, unsigned short v113, unsigned int v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 1;
signed short v116 = 2;
unsigned short v115 = 1;
trace++;
switch (trace)
{
case 6: 
return v113;
default: abort ();
}
}
}
}
