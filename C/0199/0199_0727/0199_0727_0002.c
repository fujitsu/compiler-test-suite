#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (unsigned char, unsigned int, signed int, unsigned short);
extern unsigned int (*v4) (unsigned char, unsigned int, signed int, unsigned short);
unsigned int v5 (unsigned int, unsigned char, unsigned short);
unsigned int (*v6) (unsigned int, unsigned char, unsigned short) = v5;
extern signed short v7 (unsigned short, unsigned char, signed short, signed int);
extern signed short (*v8) (unsigned short, unsigned char, signed short, signed int);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v11 (unsigned int, signed int, signed int);
extern unsigned char (*v12) (unsigned int, signed int, signed int);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
unsigned int v15 (signed char, signed short, unsigned int);
unsigned int (*v16) (signed char, signed short, unsigned int) = v15;
extern void v17 (unsigned short, unsigned int, signed int, unsigned short);
extern void (*v18) (unsigned short, unsigned int, signed int, unsigned short);
extern void v19 (unsigned char, signed char, signed int);
extern void (*v20) (unsigned char, signed char, signed int);
extern signed char v21 (unsigned int, unsigned char, unsigned char);
extern signed char (*v22) (unsigned int, unsigned char, unsigned char);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
unsigned short v25 (signed short);
unsigned short (*v26) (signed short) = v25;
extern signed short v29 (unsigned int, unsigned short, signed short, unsigned int);
extern signed short (*v30) (unsigned int, unsigned short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v102 = 2;
unsigned int v101 = 3U;
signed short v100 = 1;

unsigned short v25 (signed short v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = -3;
unsigned short v105 = 7;
signed int v104 = 1;
trace++;
switch (trace)
{
case 7: 
return v105;
default: abort ();
}
}
}
}

unsigned int v15 (signed char v107, signed short v108, unsigned int v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 0;
signed short v111 = -3;
signed char v110 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v113, unsigned char v114, unsigned short v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 5U;
unsigned char v117 = 1;
signed char v116 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
