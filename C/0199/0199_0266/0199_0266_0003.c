#include <stdlib.h>
extern signed int v1 (unsigned char, signed short);
extern signed int (*v2) (unsigned char, signed short);
extern signed char v3 (unsigned short, signed int, unsigned int, signed char);
extern signed char (*v4) (unsigned short, signed int, unsigned int, signed char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed int v7 (unsigned short, unsigned short, unsigned char);
extern signed int (*v8) (unsigned short, unsigned short, unsigned char);
unsigned int v9 (unsigned int, signed int, signed int, signed int);
unsigned int (*v10) (unsigned int, signed int, signed int, signed int) = v9;
extern signed char v11 (signed int, unsigned char, unsigned int, unsigned char);
extern signed char (*v12) (signed int, unsigned char, unsigned int, unsigned char);
extern signed int v13 (signed int, unsigned int, unsigned int, unsigned short);
extern signed int (*v14) (signed int, unsigned int, unsigned int, unsigned short);
unsigned short v15 (unsigned char);
unsigned short (*v16) (unsigned char) = v15;
extern unsigned char v17 (unsigned int, unsigned int, unsigned int, signed char);
extern unsigned char (*v18) (unsigned int, unsigned int, unsigned int, signed char);
void v19 (signed char, signed int, signed short);
void (*v20) (signed char, signed int, signed short) = v19;
extern unsigned short v21 (signed short, signed char, unsigned char);
extern unsigned short (*v22) (signed short, signed char, unsigned char);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed int v27 (signed short, unsigned char, unsigned int);
extern signed int (*v28) (signed short, unsigned char, unsigned int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v102 = 3U;
signed int v101 = 1;
signed short v100 = -2;

void v19 (signed char v103, signed int v104, signed short v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 5U;
unsigned int v107 = 4U;
unsigned short v106 = 0;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned char v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 4;
signed char v111 = 2;
signed short v110 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned int v113, signed int v114, signed int v115, signed int v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed char v119 = -4;
unsigned int v118 = 2U;
signed short v117 = -3;
trace++;
switch (trace)
{
case 7: 
return 4U;
default: abort ();
}
}
}
}
