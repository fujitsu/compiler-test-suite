#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned short, signed short, unsigned short);
extern unsigned int (*v2) (unsigned char, unsigned short, signed short, unsigned short);
void v3 (unsigned short, signed char, signed int);
void (*v4) (unsigned short, signed char, signed int) = v3;
signed char v5 (void);
signed char (*v6) (void) = v5;
extern signed short v7 (signed short, signed int);
extern signed short (*v8) (signed short, signed int);
unsigned int v9 (signed short, signed char, unsigned int);
unsigned int (*v10) (signed short, signed char, unsigned int) = v9;
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern unsigned short v13 (signed int, unsigned short, unsigned int, unsigned int);
extern unsigned short (*v14) (signed int, unsigned short, unsigned int, unsigned int);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed int v19 (unsigned short, signed int, unsigned short, unsigned char);
extern signed int (*v20) (unsigned short, signed int, unsigned short, unsigned char);
extern unsigned char v21 (unsigned char, signed int);
extern unsigned char (*v22) (unsigned char, signed int);
extern signed int v23 (unsigned char, unsigned short, unsigned int, unsigned short);
extern signed int (*v24) (unsigned char, unsigned short, unsigned int, unsigned short);
extern signed short v25 (unsigned char);
extern signed short (*v26) (unsigned char);
extern void v27 (signed char);
extern void (*v28) (signed char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v101 = -1;
signed int v100 = 0;
signed short v99 = 2;

unsigned int v9 (signed short v102, signed char v103, unsigned int v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = 1;
unsigned short v106 = 5;
unsigned int v105 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
unsigned short v110 = 7;
unsigned short v109 = 5;
signed char v108 = 2;
trace++;
switch (trace)
{
case 1: 
return v108;
default: abort ();
}
}
}
}

void v3 (unsigned short v111, signed char v112, signed int v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed int v116 = 1;
unsigned char v115 = 7;
signed int v114 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
