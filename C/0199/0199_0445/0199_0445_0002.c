#include <stdlib.h>
extern signed short v1 (signed int, unsigned short);
extern signed short (*v2) (signed int, unsigned short);
extern unsigned char v3 (signed short, signed short);
extern unsigned char (*v4) (signed short, signed short);
unsigned char v5 (signed int, unsigned char, unsigned int, signed char);
unsigned char (*v6) (signed int, unsigned char, unsigned int, signed char) = v5;
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern unsigned char v11 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v12) (unsigned short, unsigned int, unsigned char);
extern void v13 (unsigned short, unsigned short, unsigned char, unsigned char);
extern void (*v14) (unsigned short, unsigned short, unsigned char, unsigned char);
void v15 (void);
void (*v16) (void) = v15;
extern signed char v17 (unsigned int, unsigned char, signed short, signed char);
extern signed char (*v18) (unsigned int, unsigned char, signed short, signed char);
signed short v19 (signed char, signed short);
signed short (*v20) (signed char, signed short) = v19;
extern signed short v21 (unsigned int, signed char, unsigned short, signed char);
extern signed short (*v22) (unsigned int, signed char, unsigned short, signed char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern void v27 (void);
extern void (*v28) (void);
extern signed int v29 (unsigned int, unsigned int, unsigned short);
extern signed int (*v30) (unsigned int, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v94 = 2;
unsigned int v93 = 0U;
unsigned int v92 = 0U;

signed short v19 (signed char v95, signed short v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 5;
signed short v98 = 1;
signed int v97 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
signed char v102 = -2;
signed short v101 = 3;
signed char v100 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed int v103, unsigned char v104, unsigned int v105, signed char v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = 2;
signed short v108 = 1;
unsigned int v107 = 4U;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v110;
unsigned short v111;
unsigned char v112;
unsigned char v113;
v110 = 4 - 3;
v111 = 1 + 2;
v112 = 6 - 7;
v113 = 5 + v104;
v13 (v110, v111, v112, v113);
}
break;
case 11: 
return v104;
default: abort ();
}
}
}
}
