#include <stdlib.h>
signed int v1 (signed int, signed short);
signed int (*v2) (signed int, signed short) = v1;
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
extern signed char v5 (signed int, signed char);
extern signed char (*v6) (signed int, signed char);
unsigned short v7 (unsigned char, signed int);
unsigned short (*v8) (unsigned char, signed int) = v7;
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern signed char v13 (unsigned char, unsigned int, signed char, signed short);
extern signed char (*v14) (unsigned char, unsigned int, signed char, signed short);
extern signed short v15 (unsigned char, signed short, signed short, unsigned short);
extern signed short (*v16) (unsigned char, signed short, signed short, unsigned short);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern unsigned short v19 (signed int, signed int, signed int);
extern unsigned short (*v20) (signed int, signed int, signed int);
extern void v21 (void);
extern void (*v22) (void);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern signed int v25 (signed int, unsigned short, unsigned int, unsigned int);
extern signed int (*v26) (signed int, unsigned short, unsigned int, unsigned int);
void v27 (unsigned int);
void (*v28) (unsigned int) = v27;
extern unsigned char v29 (signed short, signed int, unsigned int);
extern unsigned char (*v30) (signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v98 = 1U;
unsigned char v97 = 3;
signed char v96 = 3;

void v27 (unsigned int v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 1;
unsigned int v101 = 3U;
signed int v100 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned char v103, signed int v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned char v107 = 4;
unsigned int v106 = 2U;
signed int v105 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed int v108, signed short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 2U;
signed short v111 = -4;
unsigned int v110 = 7U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v113;
unsigned int v114;
v113 = 3 + 4;
v114 = v3 (v113);
history[history_index++] = (int)v114;
}
break;
case 16: 
return -2;
default: abort ();
}
}
}
}
