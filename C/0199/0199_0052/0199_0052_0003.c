#include <stdlib.h>
extern signed short v1 (unsigned char);
extern signed short (*v2) (unsigned char);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
extern unsigned short v11 (unsigned short, unsigned int, unsigned char, unsigned int);
extern unsigned short (*v12) (unsigned short, unsigned int, unsigned char, unsigned int);
void v13 (signed char, unsigned int, signed char, signed int);
void (*v14) (signed char, unsigned int, signed char, signed int) = v13;
extern void v15 (signed int);
extern void (*v16) (signed int);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (unsigned short, unsigned char);
extern signed int (*v22) (unsigned short, unsigned char);
extern unsigned char v23 (unsigned short, signed short, signed int, signed short);
extern unsigned char (*v24) (unsigned short, signed short, signed int, signed short);
extern unsigned int v25 (unsigned char, signed char, unsigned int);
extern unsigned int (*v26) (unsigned char, signed char, unsigned int);
unsigned char v27 (signed int, unsigned char, signed short, unsigned short);
unsigned char (*v28) (signed int, unsigned char, signed short, unsigned short) = v27;
extern signed int v29 (signed int, signed int);
extern signed int (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v99 = 0;
signed char v98 = 3;
unsigned short v97 = 1;

unsigned char v27 (signed int v100, unsigned char v101, signed short v102, unsigned short v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = -3;
signed short v105 = 3;
signed int v104 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
unsigned short v109 = 6;
signed char v108 = 2;
unsigned int v107 = 4U;
trace++;
switch (trace)
{
case 7: 
return v107;
case 9: 
return v107;
default: abort ();
}
}
}
}

void v13 (signed char v110, unsigned int v111, signed char v112, signed int v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 1;
signed char v115 = 3;
unsigned int v114 = 2U;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}
