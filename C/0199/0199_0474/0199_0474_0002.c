#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned char, unsigned char, signed short);
extern signed char (*v2) (unsigned char, unsigned char, unsigned char, signed short);
signed int v3 (void);
signed int (*v4) (void) = v3;
unsigned char v5 (unsigned char, unsigned short, signed short);
unsigned char (*v6) (unsigned char, unsigned short, signed short) = v5;
extern signed short v7 (signed char, unsigned char);
extern signed short (*v8) (signed char, unsigned char);
extern signed char v9 (unsigned short, signed int, signed short);
extern signed char (*v10) (unsigned short, signed int, signed short);
extern unsigned short v11 (unsigned int, unsigned short, signed short);
extern unsigned short (*v12) (unsigned int, unsigned short, signed short);
unsigned int v13 (signed char);
unsigned int (*v14) (signed char) = v13;
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
signed short v17 (signed short);
signed short (*v18) (signed short) = v17;
extern signed short v19 (unsigned int, signed char);
extern signed short (*v20) (unsigned int, signed char);
unsigned int v21 (unsigned int, signed short);
unsigned int (*v22) (unsigned int, signed short) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern void v25 (unsigned int);
extern void (*v26) (unsigned int);
extern signed short v27 (signed int, signed char);
extern signed short (*v28) (signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v93 = 4;
unsigned char v92 = 1;
unsigned short v91 = 4;

unsigned int v21 (unsigned int v94, signed short v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = 1;
unsigned short v97 = 2;
signed char v96 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed short v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 5U;
unsigned short v101 = 3;
unsigned short v100 = 0;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v103;
v103 = v23 ();
history[history_index++] = (int)v103;
}
break;
case 12: 
return v99;
default: abort ();
}
}
}
}

unsigned int v13 (signed char v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
unsigned int v107 = 3U;
signed short v106 = -2;
unsigned char v105 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v108, unsigned short v109, signed short v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 3;
signed char v112 = 2;
unsigned char v111 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
unsigned char v116 = 6;
signed char v115 = 2;
unsigned short v114 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
