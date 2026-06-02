#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
extern unsigned int v3 (unsigned int, unsigned short, unsigned char);
extern unsigned int (*v4) (unsigned int, unsigned short, unsigned char);
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
extern unsigned short v7 (unsigned char);
extern unsigned short (*v8) (unsigned char);
unsigned short v9 (signed short, signed short);
unsigned short (*v10) (signed short, signed short) = v9;
extern signed short v11 (signed int, unsigned short, signed int);
extern signed short (*v12) (signed int, unsigned short, signed int);
void v13 (signed short, signed short, unsigned short);
void (*v14) (signed short, signed short, unsigned short) = v13;
unsigned char v15 (unsigned short, signed int, signed char);
unsigned char (*v16) (unsigned short, signed int, signed char) = v15;
extern unsigned char v17 (unsigned int, signed short, signed char, unsigned char);
extern unsigned char (*v18) (unsigned int, signed short, signed char, unsigned char);
extern unsigned int v19 (signed short, unsigned short, signed int);
extern unsigned int (*v20) (signed short, unsigned short, signed int);
unsigned short v21 (signed int);
unsigned short (*v22) (signed int) = v21;
signed short v23 (unsigned int, signed short);
signed short (*v24) (unsigned int, signed short) = v23;
extern signed char v25 (signed short);
extern signed char (*v26) (signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
signed short v29 (signed short, signed short, unsigned char);
signed short (*v30) (signed short, signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v89 = -1;
signed int v88 = 3;
unsigned short v87 = 3;

signed short v29 (signed short v90, signed short v91, unsigned char v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = -3;
signed short v94 = -3;
signed int v93 = 2;
trace++;
switch (trace)
{
case 3: 
return v90;
case 5: 
return v91;
default: abort ();
}
}
}
}

signed short v23 (unsigned int v96, signed short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 3U;
signed int v99 = -3;
unsigned char v98 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (signed int v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 7;
unsigned int v103 = 1U;
signed char v102 = 0;
trace++;
switch (trace)
{
case 7: 
return 0;
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v105, signed int v106, signed char v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = 0;
unsigned char v109 = 0;
signed char v108 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed short v111, signed short v112, unsigned short v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned short v116 = 5;
signed char v115 = -1;
signed short v114 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed short v117, signed short v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 7;
signed char v120 = 0;
unsigned char v119 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
