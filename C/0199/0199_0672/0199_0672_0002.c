#include <stdlib.h>
void v1 (signed int, signed short, signed char);
void (*v2) (signed int, signed short, signed char) = v1;
extern unsigned char v3 (unsigned char, signed short);
extern unsigned char (*v4) (unsigned char, signed short);
extern unsigned char v5 (unsigned short, signed int, unsigned char);
extern unsigned char (*v6) (unsigned short, signed int, unsigned char);
extern unsigned short v7 (signed short, signed int);
extern unsigned short (*v8) (signed short, signed int);
extern signed int v9 (signed char, unsigned char, unsigned int, unsigned int);
extern signed int (*v10) (signed char, unsigned char, unsigned int, unsigned int);
extern unsigned int v11 (unsigned short);
extern unsigned int (*v12) (unsigned short);
unsigned short v13 (unsigned short, unsigned short);
unsigned short (*v14) (unsigned short, unsigned short) = v13;
unsigned int v15 (unsigned short);
unsigned int (*v16) (unsigned short) = v15;
extern unsigned short v17 (signed int, signed int);
extern unsigned short (*v18) (signed int, signed int);
extern signed short v19 (unsigned short, signed int, unsigned char, unsigned short);
extern signed short (*v20) (unsigned short, signed int, unsigned char, unsigned short);
extern signed int v21 (unsigned int, unsigned short, signed int, unsigned short);
extern signed int (*v22) (unsigned int, unsigned short, signed int, unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (unsigned char);
extern unsigned short (*v26) (unsigned char);
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v94 = 3U;
signed char v93 = -4;
unsigned short v92 = 3;

unsigned char v27 (void)
{
{
for (;;) {
unsigned short v97 = 4;
unsigned short v96 = 3;
unsigned short v95 = 6;
trace++;
switch (trace)
{
case 10: 
return 3;
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = -1;
unsigned char v100 = 0;
unsigned short v99 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned short v102, unsigned short v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = 1;
signed short v105 = 2;
signed char v104 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed int v107, signed short v108, signed char v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 3;
signed char v111 = -3;
signed int v110 = -2;
trace++;
switch (trace)
{
case 0: 
return;
case 1: 
{
unsigned short v113;
unsigned int v114;
v113 = 0 + 4;
v114 = v11 (v113);
history[history_index++] = (int)v114;
}
break;
case 3: 
{
unsigned short v115;
unsigned int v116;
v115 = 2 - 1;
v116 = v11 (v115);
history[history_index++] = (int)v116;
}
break;
case 17: 
return;
default: abort ();
}
}
}
}
