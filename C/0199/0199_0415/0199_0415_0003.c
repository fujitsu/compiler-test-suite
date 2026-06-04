#include <stdlib.h>
signed int v3 (signed char);
signed int (*v4) (signed char) = v3;
void v5 (signed short, unsigned short);
void (*v6) (signed short, unsigned short) = v5;
extern signed short v7 (unsigned short, unsigned char, signed int);
extern signed short (*v8) (unsigned short, unsigned char, signed int);
extern unsigned int v9 (signed short, signed short, unsigned short, unsigned short);
extern unsigned int (*v10) (signed short, signed short, unsigned short, unsigned short);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
unsigned int v17 (signed int, unsigned short);
unsigned int (*v18) (signed int, unsigned short) = v17;
extern unsigned int v19 (unsigned char, signed short, unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned char, signed short, unsigned int, unsigned char);
extern signed char v21 (unsigned short, unsigned char, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char, unsigned char);
extern signed int v23 (unsigned char);
extern signed int (*v24) (unsigned char);
extern signed char v25 (unsigned short, unsigned int);
extern signed char (*v26) (unsigned short, unsigned int);
extern unsigned char v27 (unsigned char, unsigned int, unsigned char, signed int);
extern unsigned char (*v28) (unsigned char, unsigned int, unsigned char, signed int);
signed int v29 (unsigned short, signed int, unsigned short);
signed int (*v30) (unsigned short, signed int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v109 = 0;
signed short v108 = 1;
signed short v107 = 0;

signed int v29 (unsigned short v110, signed int v111, unsigned short v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 1U;
signed char v114 = 1;
signed int v113 = -2;
trace++;
switch (trace)
{
case 2: 
return v111;
default: abort ();
}
}
}
}

unsigned int v17 (signed int v116, unsigned short v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = -4;
unsigned short v119 = 3;
unsigned char v118 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed short v121, unsigned short v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed short v125 = -1;
unsigned short v124 = 4;
signed int v123 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed char v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
signed char v129 = 3;
signed char v128 = 1;
unsigned int v127 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
