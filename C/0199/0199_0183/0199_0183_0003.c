#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
unsigned int v3 (unsigned int, signed short, signed short);
unsigned int (*v4) (unsigned int, signed short, signed short) = v3;
signed int v5 (void);
signed int (*v6) (void) = v5;
extern unsigned int v7 (unsigned int);
extern unsigned int (*v8) (unsigned int);
extern unsigned short v9 (signed short, signed int, unsigned char);
extern unsigned short (*v10) (signed short, signed int, unsigned char);
extern unsigned short v11 (signed int, unsigned char);
extern unsigned short (*v12) (signed int, unsigned char);
extern signed int v13 (signed char);
extern signed int (*v14) (signed char);
unsigned int v15 (signed short, unsigned int);
unsigned int (*v16) (signed short, unsigned int) = v15;
extern void v17 (signed char, unsigned int, unsigned short);
extern void (*v18) (signed char, unsigned int, unsigned short);
extern unsigned int v19 (unsigned int, unsigned short, signed short, signed char);
extern unsigned int (*v20) (unsigned int, unsigned short, signed short, signed char);
extern signed int v21 (unsigned char, signed short);
extern signed int (*v22) (unsigned char, signed short);
signed char v23 (signed char);
signed char (*v24) (signed char) = v23;
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
void v27 (void);
void (*v28) (void) = v27;
unsigned short v29 (signed short, signed int, signed int, signed char);
unsigned short (*v30) (signed short, signed int, signed int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v94 = 2U;
unsigned char v93 = 2;
unsigned char v92 = 5;

unsigned short v29 (signed short v95, signed int v96, signed int v97, signed char v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = 1;
unsigned char v100 = 6;
unsigned short v99 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v27 (void)
{
{
for (;;) {
signed int v104 = 0;
unsigned short v103 = 5;
unsigned int v102 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed char v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
unsigned short v108 = 1;
unsigned int v107 = 4U;
unsigned int v106 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed short v109, unsigned int v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = 3;
unsigned int v112 = 3U;
unsigned int v111 = 4U;
trace++;
switch (trace)
{
case 6: 
return v112;
case 11: 
return v110;
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
unsigned int v116 = 4U;
signed short v115 = 2;
unsigned int v114 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v117, signed short v118, signed short v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 1U;
signed short v121 = 1;
unsigned int v120 = 3U;
trace++;
switch (trace)
{
case 1: 
return v122;
case 3: 
return v120;
default: abort ();
}
}
}
}
