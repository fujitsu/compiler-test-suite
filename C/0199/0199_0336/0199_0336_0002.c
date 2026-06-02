#include <stdlib.h>
extern unsigned char v3 (unsigned char, unsigned short, signed int, unsigned short);
extern unsigned char (*v4) (unsigned char, unsigned short, signed int, unsigned short);
extern void v5 (void);
extern void (*v6) (void);
unsigned int v7 (unsigned short, signed char, signed char);
unsigned int (*v8) (unsigned short, signed char, signed char) = v7;
extern void v9 (signed short, unsigned short);
extern void (*v10) (signed short, unsigned short);
signed int v11 (unsigned short, unsigned short);
signed int (*v12) (unsigned short, unsigned short) = v11;
extern unsigned short v13 (signed int, unsigned char, signed short);
extern unsigned short (*v14) (signed int, unsigned char, signed short);
extern void v15 (signed short, unsigned short, signed int);
extern void (*v16) (signed short, unsigned short, signed int);
extern signed int v17 (signed short, unsigned short, unsigned int);
extern signed int (*v18) (signed short, unsigned short, unsigned int);
signed short v19 (unsigned int, unsigned short, unsigned int);
signed short (*v20) (unsigned int, unsigned short, unsigned int) = v19;
unsigned int v21 (unsigned int, signed short);
unsigned int (*v22) (unsigned int, signed short) = v21;
unsigned short v23 (unsigned char);
unsigned short (*v24) (unsigned char) = v23;
extern unsigned char v25 (unsigned int, signed short, signed char);
extern unsigned char (*v26) (unsigned int, signed short, signed char);
extern unsigned short v27 (unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned char, unsigned short);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v97 = 0;
signed char v96 = -2;
signed char v95 = -3;

unsigned short v23 (unsigned char v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 5;
signed int v100 = -2;
signed int v99 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (unsigned int v102, signed short v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 4U;
signed int v105 = -2;
signed char v104 = 1;
trace++;
switch (trace)
{
case 5: 
return v106;
case 11: 
return 3U;
default: abort ();
}
}
}
}

signed short v19 (unsigned int v107, unsigned short v108, unsigned int v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = -3;
signed short v111 = -3;
signed int v110 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned short v113, unsigned short v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = -4;
unsigned short v116 = 5;
unsigned int v115 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v118, signed char v119, signed char v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned short v123 = 3;
unsigned char v122 = 0;
signed char v121 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
