#include <stdlib.h>
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed char v5 (signed int, signed short);
extern signed char (*v6) (signed int, signed short);
extern signed int v7 (signed char);
extern signed int (*v8) (signed char);
extern void v9 (void);
extern void (*v10) (void);
extern signed short v11 (unsigned int, signed int);
extern signed short (*v12) (unsigned int, signed int);
signed short v13 (signed int, signed short, signed int);
signed short (*v14) (signed int, signed short, signed int) = v13;
unsigned int v15 (signed int);
unsigned int (*v16) (signed int) = v15;
signed short v19 (unsigned short, signed short);
signed short (*v20) (unsigned short, signed short) = v19;
extern unsigned char v23 (unsigned char);
extern unsigned char (*v24) (unsigned char);
void v25 (signed int);
void (*v26) (signed int) = v25;
signed short v27 (signed char, signed char, unsigned int);
signed short (*v28) (signed char, signed char, unsigned int) = v27;
extern signed char v29 (signed short);
extern signed char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v93 = 3;
unsigned char v92 = 7;
unsigned int v91 = 1U;

signed short v27 (signed char v94, signed char v95, unsigned int v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned int v99 = 3U;
signed short v98 = 0;
signed char v97 = 1;
trace++;
switch (trace)
{
case 1: 
return v98;
default: abort ();
}
}
}
}

void v25 (signed int v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
unsigned short v103 = 6;
unsigned int v102 = 0U;
unsigned char v101 = 1;
trace++;
switch (trace)
{
case 4: 
return;
case 8: 
return;
default: abort ();
}
}
}
}

signed short v19 (unsigned short v104, signed short v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 7U;
unsigned char v107 = 0;
signed char v106 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed int v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 2;
signed short v111 = -2;
signed int v110 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed int v113, signed short v114, signed int v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = -4;
unsigned char v117 = 3;
unsigned short v116 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
