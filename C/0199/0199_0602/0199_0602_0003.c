#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern unsigned short v3 (unsigned int, unsigned short);
extern unsigned short (*v4) (unsigned int, unsigned short);
extern unsigned char v5 (signed short, signed int, unsigned int, signed int);
extern unsigned char (*v6) (signed short, signed int, unsigned int, signed int);
extern unsigned char v7 (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned char (*v8) (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned short v9 (signed short, unsigned short);
extern unsigned short (*v10) (signed short, unsigned short);
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern unsigned char v15 (signed int, unsigned char, signed char, signed char);
extern unsigned char (*v16) (signed int, unsigned char, signed char, signed char);
unsigned short v17 (unsigned int, unsigned int);
unsigned short (*v18) (unsigned int, unsigned int) = v17;
extern unsigned char v19 (signed char, signed int);
extern unsigned char (*v20) (signed char, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
unsigned char v25 (signed short, unsigned short, unsigned int, unsigned char);
unsigned char (*v26) (signed short, unsigned short, unsigned int, unsigned char) = v25;
extern void v27 (unsigned int, unsigned short, signed short, unsigned char);
extern void (*v28) (unsigned int, unsigned short, signed short, unsigned char);
unsigned short v29 (unsigned short, unsigned short, signed short, unsigned short);
unsigned short (*v30) (unsigned short, unsigned short, signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v104 = 1;
unsigned char v103 = 2;
unsigned short v102 = 0;

unsigned short v29 (unsigned short v105, unsigned short v106, signed short v107, unsigned short v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned char v111 = 1;
unsigned int v110 = 3U;
signed short v109 = 0;
trace++;
switch (trace)
{
case 10: 
return 3;
default: abort ();
}
}
}
}

unsigned char v25 (signed short v112, unsigned short v113, unsigned int v114, unsigned char v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = 3;
unsigned char v117 = 3;
signed int v116 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned int v119, unsigned int v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = -2;
unsigned int v122 = 0U;
unsigned short v121 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed char v124;
signed char v125;
v124 = 0 - -1;
v125 = v1 (v124);
history[history_index++] = (int)v125;
}
break;
case 13: 
return v121;
default: abort ();
}
}
}
}
