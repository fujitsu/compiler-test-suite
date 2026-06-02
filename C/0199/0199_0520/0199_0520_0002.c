#include <stdlib.h>
extern signed short v5 (signed short, unsigned short, unsigned short);
extern signed short (*v6) (signed short, unsigned short, unsigned short);
extern signed short v7 (unsigned char, signed int, unsigned int);
extern signed short (*v8) (unsigned char, signed int, unsigned int);
extern unsigned short v9 (unsigned int, signed short, signed char, signed int);
extern unsigned short (*v10) (unsigned int, signed short, signed char, signed int);
extern signed char v11 (void);
extern signed char (*v12) (void);
void v13 (void);
void (*v14) (void) = v13;
extern unsigned char v15 (unsigned short, signed short, signed short);
extern unsigned char (*v16) (unsigned short, signed short, signed short);
extern signed char v17 (unsigned int, signed char, signed char);
extern signed char (*v18) (unsigned int, signed char, signed char);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern void v23 (signed char, signed int, unsigned int, unsigned int);
extern void (*v24) (signed char, signed int, unsigned int, unsigned int);
extern signed char v25 (unsigned char, signed short, unsigned char, signed short);
extern signed char (*v26) (unsigned char, signed short, unsigned char, signed short);
signed int v27 (signed int, signed int);
signed int (*v28) (signed int, signed int) = v27;
void v29 (signed short, signed char, signed short, signed short);
void (*v30) (signed short, signed char, signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v102 = -4;
signed char v101 = -4;
signed char v100 = 0;

void v29 (signed short v103, signed char v104, signed short v105, signed short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 1;
unsigned char v108 = 2;
signed short v107 = -3;
trace++;
switch (trace)
{
case 7: 
return;
default: abort ();
}
}
}
}

signed int v27 (signed int v110, signed int v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed int v114 = -3;
signed short v113 = -3;
signed char v112 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
unsigned char v117 = 5;
unsigned char v116 = 3;
unsigned short v115 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
