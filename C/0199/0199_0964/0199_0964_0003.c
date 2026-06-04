#include <stdlib.h>
extern signed short v1 (signed char, signed short, unsigned char, unsigned char);
extern signed short (*v2) (signed char, signed short, unsigned char, unsigned char);
void v3 (signed int, signed int, signed short);
void (*v4) (signed int, signed int, signed short) = v3;
extern signed short v5 (unsigned short, signed int);
extern signed short (*v6) (unsigned short, signed int);
extern signed int v7 (signed char);
extern signed int (*v8) (signed char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (unsigned int);
extern unsigned int (*v12) (unsigned int);
extern void v13 (unsigned char, unsigned int, signed char);
extern void (*v14) (unsigned char, unsigned int, signed char);
extern unsigned short v17 (signed int, signed char, signed int);
extern unsigned short (*v18) (signed int, signed char, signed int);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned char v21 (signed short, signed int);
extern unsigned char (*v22) (signed short, signed int);
signed int v23 (unsigned short, signed char, unsigned char);
signed int (*v24) (unsigned short, signed char, unsigned char) = v23;
void v25 (signed int, signed char, signed char, signed char);
void (*v26) (signed int, signed char, signed char, signed char) = v25;
signed char v27 (unsigned int);
signed char (*v28) (unsigned int) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v99 = -1;
unsigned short v98 = 7;
unsigned char v97 = 7;

signed char v27 (unsigned int v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 1;
signed int v102 = -4;
unsigned short v101 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (signed int v104, signed char v105, signed char v106, signed char v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned char v110 = 7;
signed char v109 = 0;
unsigned char v108 = 6;
trace++;
switch (trace)
{
case 8: 
return;
default: abort ();
}
}
}
}

signed int v23 (unsigned short v111, signed char v112, unsigned char v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -4;
signed int v115 = 1;
unsigned short v114 = 0;
trace++;
switch (trace)
{
case 2: 
return -3;
case 4: 
return 1;
default: abort ();
}
}
}
}

void v3 (signed int v117, signed int v118, signed short v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = -4;
signed int v121 = 0;
unsigned int v120 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
