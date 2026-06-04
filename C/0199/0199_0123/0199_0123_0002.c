#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v2) (unsigned char, unsigned char, unsigned int);
extern unsigned int v3 (signed int, signed short, unsigned short, unsigned char);
extern unsigned int (*v4) (signed int, signed short, unsigned short, unsigned char);
extern unsigned short v5 (unsigned short);
extern unsigned short (*v6) (unsigned short);
unsigned char v7 (unsigned short, signed char, unsigned char, signed char);
unsigned char (*v8) (unsigned short, signed char, unsigned char, signed char) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
unsigned short v11 (unsigned short, unsigned short);
unsigned short (*v12) (unsigned short, unsigned short) = v11;
extern unsigned char v13 (signed short);
extern unsigned char (*v14) (signed short);
extern signed short v15 (signed short, unsigned short, signed int);
extern signed short (*v16) (signed short, unsigned short, signed int);
extern unsigned char v19 (signed char, signed int, signed short);
extern unsigned char (*v20) (signed char, signed int, signed short);
extern unsigned int v21 (signed int, unsigned int, signed char, unsigned char);
extern unsigned int (*v22) (signed int, unsigned int, signed char, unsigned char);
extern signed char v23 (signed int, signed char, signed short);
extern signed char (*v24) (signed int, signed char, signed short);
extern void v25 (unsigned char, unsigned char);
extern void (*v26) (unsigned char, unsigned char);
unsigned short v27 (unsigned int, signed short);
unsigned short (*v28) (unsigned int, signed short) = v27;
extern signed char v29 (signed short, signed int, unsigned int, unsigned int);
extern signed char (*v30) (signed short, signed int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v102 = 0U;
unsigned int v101 = 7U;
unsigned int v100 = 3U;

unsigned short v27 (unsigned int v103, signed short v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned short v107 = 2;
unsigned short v106 = 1;
signed char v105 = 2;
trace++;
switch (trace)
{
case 1: 
return v106;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned short v108, unsigned short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed short v112 = -1;
unsigned short v111 = 4;
signed int v110 = -2;
trace++;
switch (trace)
{
case 5: 
return 1;
case 9: 
return v109;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v113, signed char v114, unsigned char v115, signed char v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = 0;
signed short v118 = -4;
unsigned short v117 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
