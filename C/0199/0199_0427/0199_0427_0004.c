#include <stdlib.h>
extern unsigned short v1 (signed char);
extern unsigned short (*v2) (signed char);
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
void v5 (unsigned int, unsigned short);
void (*v6) (unsigned int, unsigned short) = v5;
extern void v7 (signed short, signed short);
extern void (*v8) (signed short, signed short);
extern unsigned int v9 (unsigned int, unsigned short);
extern unsigned int (*v10) (unsigned int, unsigned short);
void v11 (unsigned int, unsigned short, signed int);
void (*v12) (unsigned int, unsigned short, signed int) = v11;
signed char v13 (void);
signed char (*v14) (void) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern unsigned short v23 (unsigned short, signed char, unsigned char);
extern unsigned short (*v24) (unsigned short, signed char, unsigned char);
extern unsigned int v25 (signed char, signed short);
extern unsigned int (*v26) (signed char, signed short);
signed char v29 (signed short, unsigned short, signed char, unsigned char);
signed char (*v30) (signed short, unsigned short, signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v104 = 0;
signed char v103 = -2;
signed int v102 = 1;

signed char v29 (signed short v105, unsigned short v106, signed char v107, unsigned char v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 7;
signed char v110 = 3;
signed short v109 = 2;
trace++;
switch (trace)
{
case 5: 
return -4;
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
unsigned int v114 = 3U;
unsigned char v113 = 4;
unsigned char v112 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned int v115, unsigned short v116, signed int v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed int v120 = 3;
signed short v119 = -2;
unsigned short v118 = 5;
trace++;
switch (trace)
{
case 8: 
return;
default: abort ();
}
}
}
}

void v5 (unsigned int v121, unsigned short v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 1;
signed short v124 = -4;
signed short v123 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
unsigned int v128 = 0U;
signed int v127 = -1;
unsigned char v126 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
