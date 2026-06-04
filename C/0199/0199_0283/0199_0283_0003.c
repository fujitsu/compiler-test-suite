#include <stdlib.h>
unsigned char v1 (unsigned char, unsigned char);
unsigned char (*v2) (unsigned char, unsigned char) = v1;
unsigned int v3 (unsigned char, signed short, unsigned char, unsigned char);
unsigned int (*v4) (unsigned char, signed short, unsigned char, unsigned char) = v3;
extern signed short v5 (signed int, signed short, unsigned int, unsigned int);
extern signed short (*v6) (signed int, signed short, unsigned int, unsigned int);
extern unsigned int v7 (unsigned char, unsigned short, signed char, signed char);
extern unsigned int (*v8) (unsigned char, unsigned short, signed char, signed char);
extern void v9 (void);
extern void (*v10) (void);
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
extern unsigned short v13 (signed char, signed char, unsigned int);
extern unsigned short (*v14) (signed char, signed char, unsigned int);
extern void v15 (signed short);
extern void (*v16) (signed short);
void v17 (unsigned int, signed int);
void (*v18) (unsigned int, signed int) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed short v21 (signed short, signed short, signed int);
extern signed short (*v22) (signed short, signed short, signed int);
extern signed short v25 (unsigned short, unsigned int, unsigned int, unsigned int);
extern signed short (*v26) (unsigned short, unsigned int, unsigned int, unsigned int);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v103 = 3;
unsigned char v102 = 0;
signed char v101 = 3;

void v17 (unsigned int v104, signed int v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 6U;
unsigned int v107 = 4U;
signed int v106 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned char v109, signed short v110, unsigned char v111, unsigned char v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 6;
signed int v114 = 2;
signed char v113 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v116, unsigned char v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 7U;
unsigned int v119 = 3U;
unsigned short v118 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v121;
v121 = -4 + 3;
v15 (v121);
}
break;
case 12: 
return v117;
default: abort ();
}
}
}
}
