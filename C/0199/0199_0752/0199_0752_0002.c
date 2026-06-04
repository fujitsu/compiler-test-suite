#include <stdlib.h>
signed char v3 (signed char);
signed char (*v4) (signed char) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
unsigned char v9 (unsigned int, unsigned int);
unsigned char (*v10) (unsigned int, unsigned int) = v9;
extern void v11 (unsigned int, unsigned char, signed char, unsigned char);
extern void (*v12) (unsigned int, unsigned char, signed char, unsigned char);
extern signed int v13 (unsigned short, signed char);
extern signed int (*v14) (unsigned short, signed char);
signed short v15 (signed char, unsigned short);
signed short (*v16) (signed char, unsigned short) = v15;
unsigned char v17 (signed short, signed char, signed short);
unsigned char (*v18) (signed short, signed char, signed short) = v17;
extern unsigned char v19 (unsigned int, unsigned int, unsigned short, unsigned char);
extern unsigned char (*v20) (unsigned int, unsigned int, unsigned short, unsigned char);
extern signed char v21 (unsigned short, signed int, signed char);
extern signed char (*v22) (unsigned short, signed int, signed char);
signed int v23 (unsigned int, signed int, unsigned short, unsigned char);
signed int (*v24) (unsigned int, signed int, unsigned short, unsigned char) = v23;
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
unsigned char v27 (unsigned short, signed int, unsigned char);
unsigned char (*v28) (unsigned short, signed int, unsigned char) = v27;
extern unsigned int v29 (unsigned char, signed char);
extern unsigned int (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v86 = 3;
unsigned char v85 = 3;
unsigned int v84 = 2U;

unsigned char v27 (unsigned short v87, signed int v88, unsigned char v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed char v92 = 2;
signed int v91 = 3;
unsigned short v90 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (unsigned int v93, signed int v94, unsigned short v95, unsigned char v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned int v99 = 3U;
signed int v98 = 0;
signed char v97 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed short v100, signed char v101, signed short v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = -4;
signed int v104 = 2;
unsigned char v103 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed char v106, unsigned short v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = 3;
signed char v109 = -3;
unsigned char v108 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v111, unsigned int v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 3;
unsigned char v114 = 0;
signed short v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed char v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
unsigned char v119 = 2;
unsigned char v118 = 1;
signed int v117 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
