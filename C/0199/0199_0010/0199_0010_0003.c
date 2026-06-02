#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (unsigned int, signed short, signed char);
extern void (*v4) (unsigned int, signed short, signed char);
extern unsigned short v5 (unsigned int);
extern unsigned short (*v6) (unsigned int);
extern unsigned short v7 (signed char);
extern unsigned short (*v8) (signed char);
extern unsigned int v9 (signed short, unsigned short, signed short, signed int);
extern unsigned int (*v10) (signed short, unsigned short, signed short, signed int);
extern signed char v11 (signed int, signed short, unsigned char, unsigned int);
extern signed char (*v12) (signed int, signed short, unsigned char, unsigned int);
extern signed char v13 (signed int, unsigned short, signed short, unsigned int);
extern signed char (*v14) (signed int, unsigned short, signed short, unsigned int);
void v15 (signed char, unsigned char, signed short);
void (*v16) (signed char, unsigned char, signed short) = v15;
extern signed short v17 (unsigned short, signed char, signed int);
extern signed short (*v18) (unsigned short, signed char, signed int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (unsigned char, signed short);
extern unsigned int (*v22) (unsigned char, signed short);
unsigned short v23 (signed short, signed short, unsigned short, unsigned int);
unsigned short (*v24) (signed short, signed short, unsigned short, unsigned int) = v23;
unsigned short v27 (signed int, unsigned char, unsigned int);
unsigned short (*v28) (signed int, unsigned char, unsigned int) = v27;
extern void v29 (signed short, unsigned int, signed char);
extern void (*v30) (signed short, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v100 = -1;
signed char v99 = 1;
unsigned int v98 = 5U;

unsigned short v27 (signed int v101, unsigned char v102, unsigned int v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = -2;
signed char v105 = -1;
signed int v104 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (signed short v107, signed short v108, unsigned short v109, unsigned int v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed int v113 = 0;
signed short v112 = 2;
signed short v111 = -3;
trace++;
switch (trace)
{
case 6: 
return 7;
default: abort ();
}
}
}
}

void v15 (signed char v114, unsigned char v115, signed short v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned int v119 = 2U;
signed int v118 = -4;
signed char v117 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
