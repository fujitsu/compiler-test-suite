#include <stdlib.h>
extern signed char v3 (unsigned int, unsigned char, signed short);
extern signed char (*v4) (unsigned int, unsigned char, signed short);
unsigned int v5 (unsigned int, signed char, signed int);
unsigned int (*v6) (unsigned int, signed char, signed int) = v5;
extern signed short v7 (signed int, signed short, unsigned char, unsigned char);
extern signed short (*v8) (signed int, signed short, unsigned char, unsigned char);
signed short v9 (unsigned short);
signed short (*v10) (unsigned short) = v9;
extern signed int v11 (signed short, unsigned short, signed short, unsigned char);
extern signed int (*v12) (signed short, unsigned short, signed short, unsigned char);
extern void v13 (signed char, signed int, signed char);
extern void (*v14) (signed char, signed int, signed char);
extern unsigned short v15 (unsigned char, signed int);
extern unsigned short (*v16) (unsigned char, signed int);
extern signed short v17 (unsigned char, unsigned short);
extern signed short (*v18) (unsigned char, unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (signed int, unsigned short);
extern unsigned int (*v22) (signed int, unsigned short);
void v23 (signed char, signed char);
void (*v24) (signed char, signed char) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (signed char, signed int, signed char);
extern unsigned int (*v28) (signed char, signed int, signed char);
extern signed int v29 (unsigned short, unsigned int);
extern signed int (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v99 = 3U;
signed int v98 = -4;
signed int v97 = 0;

void v23 (signed char v100, signed char v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 0;
unsigned char v103 = 7;
signed char v102 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned short v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
unsigned short v108 = 1;
signed int v107 = -2;
unsigned char v106 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v109, signed char v110, signed int v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 7;
unsigned short v113 = 4;
signed short v112 = 1;
trace++;
switch (trace)
{
case 1: 
return 7U;
case 9: 
return 5U;
default: abort ();
}
}
}
}
