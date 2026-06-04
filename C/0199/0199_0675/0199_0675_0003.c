#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned short);
extern signed short (*v2) (unsigned short, unsigned short);
unsigned int v3 (unsigned char);
unsigned int (*v4) (unsigned char) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned short v7 (unsigned short, signed short);
extern unsigned short (*v8) (unsigned short, signed short);
void v9 (unsigned short, signed short, signed int);
void (*v10) (unsigned short, signed short, signed int) = v9;
extern void v11 (unsigned short, signed short, unsigned int);
extern void (*v12) (unsigned short, signed short, unsigned int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern void v17 (signed char, unsigned short, unsigned short, unsigned int);
extern void (*v18) (signed char, unsigned short, unsigned short, unsigned int);
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
unsigned short v21 (signed char, unsigned short);
unsigned short (*v22) (signed char, unsigned short) = v21;
extern void v23 (signed char, unsigned char);
extern void (*v24) (signed char, unsigned char);
extern signed short v25 (signed int, unsigned int, signed short);
extern signed short (*v26) (signed int, unsigned int, signed short);
extern void v27 (unsigned int, signed char, unsigned short, unsigned short);
extern void (*v28) (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v104 = 0;
signed char v103 = 1;
signed short v102 = 2;

unsigned short v21 (signed char v105, unsigned short v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = -1;
unsigned short v108 = 4;
unsigned short v107 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned short v110, signed short v111, signed int v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned short v115 = 1;
signed int v114 = 1;
signed short v113 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned char v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = -4;
signed char v118 = -2;
unsigned char v117 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
