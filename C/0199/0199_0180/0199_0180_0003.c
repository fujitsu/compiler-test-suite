#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
signed short v3 (signed char, unsigned int, unsigned int, signed short);
signed short (*v4) (signed char, unsigned int, unsigned int, signed short) = v3;
signed int v5 (unsigned short);
signed int (*v6) (unsigned short) = v5;
extern signed char v11 (unsigned short, signed short);
extern signed char (*v12) (unsigned short, signed short);
extern unsigned char v13 (signed short, signed short);
extern unsigned char (*v14) (signed short, signed short);
extern void v17 (unsigned short, signed short);
extern void (*v18) (unsigned short, signed short);
extern unsigned short v19 (unsigned char, signed int, signed char, unsigned char);
extern unsigned short (*v20) (unsigned char, signed int, signed char, unsigned char);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned char v23 (unsigned short, unsigned int, signed int, unsigned int);
extern unsigned char (*v24) (unsigned short, unsigned int, signed int, unsigned int);
extern signed short v25 (signed short, unsigned int, signed int, unsigned char);
extern signed short (*v26) (signed short, unsigned int, signed int, unsigned char);
unsigned char v27 (signed char);
unsigned char (*v28) (signed char) = v27;
signed char v29 (unsigned int, unsigned int);
signed char (*v30) (unsigned int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v105 = 0;
unsigned int v104 = 5U;
unsigned int v103 = 7U;

signed char v29 (unsigned int v106, unsigned int v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = 0;
signed char v109 = -3;
unsigned char v108 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v27 (signed char v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed short v114 = -4;
unsigned int v113 = 2U;
signed short v112 = -4;
trace++;
switch (trace)
{
case 4: 
return 7;
case 6: 
return 6;
default: abort ();
}
}
}
}

signed int v5 (unsigned short v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
signed char v118 = 0;
unsigned int v117 = 4U;
unsigned int v116 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed char v119, unsigned int v120, unsigned int v121, signed short v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed char v125 = 2;
signed char v124 = 3;
signed char v123 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
