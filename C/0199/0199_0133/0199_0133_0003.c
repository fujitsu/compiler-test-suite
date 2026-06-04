#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (unsigned char, unsigned char);
extern signed int (*v4) (unsigned char, unsigned char);
extern void v5 (unsigned char);
extern void (*v6) (unsigned char);
unsigned char v7 (signed int, signed int);
unsigned char (*v8) (signed int, signed int) = v7;
extern signed int v9 (signed int, unsigned int, signed int);
extern signed int (*v10) (signed int, unsigned int, signed int);
signed char v11 (signed int, signed int, signed char, unsigned short);
signed char (*v12) (signed int, signed int, signed char, unsigned short) = v11;
unsigned int v13 (signed short);
unsigned int (*v14) (signed short) = v13;
extern unsigned char v15 (unsigned short, unsigned char, signed int, signed char);
extern unsigned char (*v16) (unsigned short, unsigned char, signed int, signed char);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
signed char v21 (signed short, signed int, unsigned short);
signed char (*v22) (signed short, signed int, unsigned short) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (signed int, unsigned int);
extern signed int (*v26) (signed int, unsigned int);
signed char v27 (unsigned int, signed int, signed char, unsigned short);
signed char (*v28) (unsigned int, signed int, signed char, unsigned short) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v79 = 7;
signed short v78 = -1;
unsigned char v77 = 4;

signed char v27 (unsigned int v80, signed int v81, signed char v82, unsigned short v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed int v86 = -1;
unsigned short v85 = 4;
unsigned int v84 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (signed short v87, signed int v88, unsigned short v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = -1;
signed short v91 = 0;
signed int v90 = 1;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v93;
v93 = v29 ();
history[history_index++] = (int)v93;
}
break;
case 9: 
{
signed int v94;
v94 = v23 ();
history[history_index++] = (int)v94;
}
break;
case 11: 
return -2;
case 13: 
return -2;
default: abort ();
}
}
}
}

unsigned int v13 (signed short v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
signed char v98 = 1;
unsigned short v97 = 1;
unsigned int v96 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed int v99, signed int v100, signed char v101, unsigned short v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 2;
unsigned int v104 = 3U;
signed char v103 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v106, signed int v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned int v110 = 0U;
unsigned short v109 = 1;
signed short v108 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
