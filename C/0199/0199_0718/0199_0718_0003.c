#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (unsigned int, signed char);
extern signed short (*v4) (unsigned int, signed char);
extern signed short v5 (unsigned int);
extern signed short (*v6) (unsigned int);
extern signed short v9 (unsigned short, unsigned int, unsigned int);
extern signed short (*v10) (unsigned short, unsigned int, unsigned int);
extern signed short v11 (unsigned char, unsigned char);
extern signed short (*v12) (unsigned char, unsigned char);
unsigned int v13 (unsigned char, unsigned int, unsigned char, signed int);
unsigned int (*v14) (unsigned char, unsigned int, unsigned char, signed int) = v13;
extern signed char v15 (unsigned char, signed int, unsigned int);
extern signed char (*v16) (unsigned char, signed int, unsigned int);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
unsigned int v19 (signed int, signed int);
unsigned int (*v20) (signed int, signed int) = v19;
extern unsigned char v21 (signed short, unsigned int, unsigned int);
extern unsigned char (*v22) (signed short, unsigned int, unsigned int);
extern signed char v23 (unsigned int, signed short, signed int, signed char);
extern signed char (*v24) (unsigned int, signed short, signed int, signed char);
unsigned short v25 (unsigned int, unsigned int, unsigned int);
unsigned short (*v26) (unsigned int, unsigned int, unsigned int) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed int v29 (unsigned char, unsigned short);
extern signed int (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v106 = 5;
unsigned char v105 = 5;
signed int v104 = 2;

unsigned short v25 (unsigned int v107, unsigned int v108, unsigned int v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 0U;
signed short v111 = 0;
signed short v110 = -3;
trace++;
switch (trace)
{
case 3: 
return 0;
case 5: 
{
unsigned short v113;
v113 = v27 ();
history[history_index++] = (int)v113;
}
break;
case 7: 
{
unsigned short v114;
v114 = v27 ();
history[history_index++] = (int)v114;
}
break;
case 9: 
return 5;
default: abort ();
}
}
}
}

unsigned int v19 (signed int v115, signed int v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = 0;
unsigned int v118 = 2U;
signed int v117 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v120, unsigned int v121, unsigned char v122, signed int v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 7;
signed int v125 = 0;
signed int v124 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
