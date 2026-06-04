#include <stdlib.h>
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned short v5 (unsigned char, unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned char, unsigned int, unsigned short);
extern unsigned char v7 (signed char, unsigned int);
extern unsigned char (*v8) (signed char, unsigned int);
unsigned int v9 (signed char);
unsigned int (*v10) (signed char) = v9;
unsigned int v11 (unsigned int, signed short, signed int, unsigned short);
unsigned int (*v12) (unsigned int, signed short, signed int, unsigned short) = v11;
extern signed char v13 (unsigned char, unsigned char);
extern signed char (*v14) (unsigned char, unsigned char);
signed int v15 (unsigned short, signed short, unsigned int, unsigned short);
signed int (*v16) (unsigned short, signed short, unsigned int, unsigned short) = v15;
unsigned short v17 (signed char);
unsigned short (*v18) (signed char) = v17;
unsigned int v19 (unsigned int);
unsigned int (*v20) (unsigned int) = v19;
signed int v21 (void);
signed int (*v22) (void) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern unsigned int v25 (signed short, signed int, unsigned char, signed int);
extern unsigned int (*v26) (signed short, signed int, unsigned char, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
void v29 (signed short, unsigned int, unsigned short);
void (*v30) (signed short, unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v95 = 1;
signed short v94 = 0;
signed char v93 = -4;

void v29 (signed short v96, unsigned int v97, unsigned short v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = 0;
unsigned short v100 = 0;
signed char v99 = 1;
trace++;
switch (trace)
{
case 9: 
return;
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
unsigned char v104 = 2;
signed char v103 = -3;
unsigned int v102 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned int v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = 1;
unsigned char v107 = 6;
unsigned short v106 = 5;
trace++;
switch (trace)
{
case 3: 
return v105;
case 5: 
return v105;
default: abort ();
}
}
}
}

unsigned short v17 (signed char v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 0;
signed int v111 = -1;
signed char v110 = 0;
trace++;
switch (trace)
{
case 11: 
return 2;
default: abort ();
}
}
}
}

signed int v15 (unsigned short v113, signed short v114, unsigned int v115, unsigned short v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = 0;
unsigned int v118 = 5U;
unsigned char v117 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v120, signed short v121, signed int v122, unsigned short v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed int v126 = -4;
signed int v125 = 2;
unsigned char v124 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed char v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = -4;
unsigned char v129 = 0;
signed short v128 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
