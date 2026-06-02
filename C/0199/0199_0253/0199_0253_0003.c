#include <stdlib.h>
unsigned char v3 (unsigned int);
unsigned char (*v4) (unsigned int) = v3;
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
extern signed int v7 (unsigned int, signed int, unsigned int, signed char);
extern signed int (*v8) (unsigned int, signed int, unsigned int, signed char);
extern unsigned int v9 (signed int, unsigned int, signed int);
extern unsigned int (*v10) (signed int, unsigned int, signed int);
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
unsigned int v13 (unsigned short, unsigned char, signed int, unsigned char);
unsigned int (*v14) (unsigned short, unsigned char, signed int, unsigned char) = v13;
extern signed short v15 (signed int, unsigned int, signed char, unsigned int);
extern signed short (*v16) (signed int, unsigned int, signed char, unsigned int);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern unsigned int v19 (signed short, unsigned short, signed short, signed int);
extern unsigned int (*v20) (signed short, unsigned short, signed short, signed int);
extern unsigned short v21 (signed char, signed char, unsigned char, signed int);
extern unsigned short (*v22) (signed char, signed char, unsigned char, signed int);
extern signed short v23 (void);
extern signed short (*v24) (void);
void v25 (unsigned char, unsigned char, unsigned int, signed short);
void (*v26) (unsigned char, unsigned char, unsigned int, signed short) = v25;
extern signed short v27 (signed int, signed short);
extern signed short (*v28) (signed int, signed short);
extern signed int v29 (unsigned char, unsigned short);
extern signed int (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v106 = -4;
signed int v105 = -1;
unsigned char v104 = 7;

void v25 (unsigned char v107, unsigned char v108, unsigned int v109, signed short v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = 0;
unsigned short v112 = 4;
unsigned int v111 = 7U;
trace++;
switch (trace)
{
case 2: 
return;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned short v114, unsigned char v115, signed int v116, unsigned char v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 7;
signed int v119 = -1;
signed short v118 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 4;
unsigned short v123 = 3;
unsigned short v122 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
