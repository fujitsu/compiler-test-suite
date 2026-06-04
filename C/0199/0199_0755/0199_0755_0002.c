#include <stdlib.h>
extern signed int v1 (signed int);
extern signed int (*v2) (signed int);
unsigned int v3 (unsigned int, signed int, unsigned short, signed char);
unsigned int (*v4) (unsigned int, signed int, unsigned short, signed char) = v3;
unsigned short v5 (signed int, signed char);
unsigned short (*v6) (signed int, signed char) = v5;
unsigned short v7 (signed short, signed int, signed int, signed int);
unsigned short (*v8) (signed short, signed int, signed int, signed int) = v7;
extern void v9 (signed int);
extern void (*v10) (signed int);
extern signed int v11 (unsigned int, unsigned char);
extern signed int (*v12) (unsigned int, unsigned char);
extern signed int v13 (unsigned char, unsigned short, unsigned char);
extern signed int (*v14) (unsigned char, unsigned short, unsigned char);
extern void v15 (unsigned int, unsigned int, unsigned short);
extern void (*v16) (unsigned int, unsigned int, unsigned short);
unsigned int v19 (signed int, unsigned char, unsigned char);
unsigned int (*v20) (signed int, unsigned char, unsigned char) = v19;
extern unsigned char v21 (signed char, signed int, signed short);
extern unsigned char (*v22) (signed char, signed int, signed short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v25 (unsigned short, signed int, unsigned int);
extern signed int (*v26) (unsigned short, signed int, unsigned int);
unsigned char v27 (unsigned short, signed int, unsigned int, unsigned int);
unsigned char (*v28) (unsigned short, signed int, unsigned int, unsigned int) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v99 = 1U;
unsigned char v98 = 7;
signed int v97 = 0;

unsigned char v27 (unsigned short v100, signed int v101, unsigned int v102, unsigned int v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 0;
signed int v105 = -3;
unsigned int v104 = 0U;
trace++;
switch (trace)
{
case 5: 
return 4;
case 9: 
return v106;
case 11: 
return v106;
default: abort ();
}
}
}
}

unsigned int v19 (signed int v107, unsigned char v108, unsigned char v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 6;
signed short v111 = 1;
unsigned int v110 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v113, signed int v114, signed int v115, signed int v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned char v119 = 6;
signed short v118 = 1;
unsigned short v117 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed int v120, signed char v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = -4;
unsigned int v123 = 5U;
unsigned char v122 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v125, signed int v126, unsigned short v127, signed char v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = -1;
signed short v130 = -1;
signed char v129 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
