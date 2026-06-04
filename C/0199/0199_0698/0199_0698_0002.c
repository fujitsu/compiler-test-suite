#include <stdlib.h>
unsigned short v1 (unsigned short);
unsigned short (*v2) (unsigned short) = v1;
signed char v3 (signed short, unsigned char, signed int, signed int);
signed char (*v4) (signed short, unsigned char, signed int, signed int) = v3;
extern unsigned short v5 (unsigned char, signed char, signed short);
extern unsigned short (*v6) (unsigned char, signed char, signed short);
extern void v7 (signed char, signed char, unsigned int);
extern void (*v8) (signed char, signed char, unsigned int);
extern unsigned short v9 (unsigned short, unsigned char, unsigned int);
extern unsigned short (*v10) (unsigned short, unsigned char, unsigned int);
extern signed char v11 (signed char, signed char, unsigned int, signed int);
extern signed char (*v12) (signed char, signed char, unsigned int, signed int);
extern unsigned char v13 (signed int);
extern unsigned char (*v14) (signed int);
extern unsigned int v15 (signed short);
extern unsigned int (*v16) (signed short);
extern signed short v17 (signed int, unsigned char);
extern signed short (*v18) (signed int, unsigned char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed char v21 (unsigned int, unsigned char, unsigned char);
extern signed char (*v22) (unsigned int, unsigned char, unsigned char);
extern unsigned short v23 (unsigned char, signed char, unsigned int);
extern unsigned short (*v24) (unsigned char, signed char, unsigned int);
unsigned short v25 (signed char);
unsigned short (*v26) (signed char) = v25;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v101 = -3;
unsigned short v100 = 5;
signed short v99 = 0;

unsigned short v25 (signed char v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
signed int v105 = -2;
unsigned int v104 = 6U;
unsigned short v103 = 6;
trace++;
switch (trace)
{
case 4: 
return 7;
default: abort ();
}
}
}
}

signed char v3 (signed short v106, unsigned char v107, signed int v108, signed int v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 7U;
unsigned int v111 = 6U;
signed short v110 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned short v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned short v116 = 0;
unsigned int v115 = 4U;
signed short v114 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed int v117;
unsigned char v118;
v117 = -4 + 2;
v118 = v13 (v117);
history[history_index++] = (int)v118;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
