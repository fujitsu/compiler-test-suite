#include <stdlib.h>
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
extern unsigned char v3 (unsigned int, signed short, signed int);
extern unsigned char (*v4) (unsigned int, signed short, signed int);
extern unsigned char v5 (unsigned short, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned short, unsigned int, unsigned int);
extern unsigned int v7 (signed char, signed int, unsigned short, unsigned int);
extern unsigned int (*v8) (signed char, signed int, unsigned short, unsigned int);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
unsigned short v15 (signed char, unsigned char);
unsigned short (*v16) (signed char, unsigned char) = v15;
void v17 (unsigned int, signed int, unsigned short, unsigned char);
void (*v18) (unsigned int, signed int, unsigned short, unsigned char) = v17;
signed char v19 (signed int, signed char, unsigned short, unsigned char);
signed char (*v20) (signed int, signed char, unsigned short, unsigned char) = v19;
extern void v21 (unsigned char, unsigned int, unsigned int);
extern void (*v22) (unsigned char, unsigned int, unsigned int);
extern unsigned short v23 (unsigned int, unsigned char);
extern unsigned short (*v24) (unsigned int, unsigned char);
extern void v25 (unsigned int, unsigned short, unsigned char);
extern void (*v26) (unsigned int, unsigned short, unsigned char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned short v29 (signed short, signed char, unsigned short, signed short);
extern unsigned short (*v30) (signed short, signed char, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v94 = 1;
signed char v93 = -4;
unsigned int v92 = 5U;

signed char v19 (signed int v95, signed char v96, unsigned short v97, unsigned char v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = -4;
unsigned short v100 = 0;
unsigned char v99 = 6;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v102;
signed int v103;
v102 = v99 - v99;
v103 = v1 (v102);
history[history_index++] = (int)v103;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

void v17 (unsigned int v104, signed int v105, unsigned short v106, unsigned char v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = 1;
unsigned char v109 = 2;
signed int v108 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed char v111, unsigned char v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed short v115 = -3;
unsigned char v114 = 0;
unsigned int v113 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
