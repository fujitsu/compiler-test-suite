#include <stdlib.h>
extern unsigned char v1 (unsigned short);
extern unsigned char (*v2) (unsigned short);
extern unsigned char v3 (signed short, unsigned int);
extern unsigned char (*v4) (signed short, unsigned int);
unsigned short v5 (unsigned char, signed int);
unsigned short (*v6) (unsigned char, signed int) = v5;
extern unsigned short v7 (signed int, signed int, signed char, signed char);
extern unsigned short (*v8) (signed int, signed int, signed char, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
unsigned short v13 (signed char, unsigned short, signed short);
unsigned short (*v14) (signed char, unsigned short, signed short) = v13;
extern signed short v15 (unsigned short);
extern signed short (*v16) (unsigned short);
unsigned short v17 (signed short);
unsigned short (*v18) (signed short) = v17;
extern signed int v19 (signed char, unsigned int, unsigned short);
extern signed int (*v20) (signed char, unsigned int, unsigned short);
extern signed char v21 (unsigned short, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char);
extern signed short v23 (unsigned short, unsigned short, signed int);
extern signed short (*v24) (unsigned short, unsigned short, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (signed int, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v28) (signed int, unsigned int, unsigned char, unsigned short);
unsigned char v29 (unsigned char, unsigned char);
unsigned char (*v30) (unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v120 = 0;
unsigned char v119 = 6;
signed int v118 = -1;

unsigned char v29 (unsigned char v121, unsigned char v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned char v125 = 7;
signed short v124 = 3;
signed int v123 = 3;
trace++;
switch (trace)
{
case 5: 
return v121;
case 7: 
return v125;
case 11: 
return v121;
default: abort ();
}
}
}
}

unsigned short v17 (signed short v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 6U;
signed short v128 = 1;
signed short v127 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed char v130, unsigned short v131, signed short v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = 3;
signed char v134 = 2;
unsigned int v133 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v136, signed int v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned short v140 = 1;
signed int v139 = 3;
unsigned char v138 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
