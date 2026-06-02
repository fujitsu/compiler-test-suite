#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
void v3 (signed char, signed int, unsigned short, unsigned int);
void (*v4) (signed char, signed int, unsigned short, unsigned int) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed char v9 (void);
extern signed char (*v10) (void);
void v11 (unsigned int, signed char, signed int, signed char);
void (*v12) (unsigned int, signed char, signed int, signed char) = v11;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v17 (unsigned char, unsigned int, unsigned char, signed int);
extern signed short (*v18) (unsigned char, unsigned int, unsigned char, signed int);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed short v21 (signed char, unsigned char);
extern signed short (*v22) (signed char, unsigned char);
extern unsigned int v23 (unsigned char, signed char);
extern unsigned int (*v24) (unsigned char, signed char);
extern signed int v25 (signed short, signed short);
extern signed int (*v26) (signed short, signed short);
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v102 = -2;
unsigned short v101 = 4;
signed int v100 = -2;

unsigned char v19 (void)
{
{
for (;;) {
unsigned int v105 = 3U;
signed short v104 = -3;
signed short v103 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned int v106, signed char v107, signed int v108, signed char v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 4;
unsigned char v111 = 6;
signed short v110 = -1;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

void v3 (signed char v113, signed int v114, unsigned short v115, unsigned int v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = -3;
signed int v118 = 2;
unsigned int v117 = 6U;
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
