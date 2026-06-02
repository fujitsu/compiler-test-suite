#include <stdlib.h>
extern signed char v3 (signed int, signed char, signed char);
extern signed char (*v4) (signed int, signed char, signed char);
void v5 (signed int, signed int);
void (*v6) (signed int, signed int) = v5;
extern signed int v7 (unsigned short, signed char);
extern signed int (*v8) (unsigned short, signed char);
extern signed int v9 (unsigned char, unsigned short, signed int, signed int);
extern signed int (*v10) (unsigned char, unsigned short, signed int, signed int);
extern signed short v11 (signed int, unsigned char, unsigned int, signed short);
extern signed short (*v12) (signed int, unsigned char, unsigned int, signed short);
extern signed char v13 (unsigned short, unsigned short, unsigned int);
extern signed char (*v14) (unsigned short, unsigned short, unsigned int);
extern signed short v15 (unsigned short, unsigned char);
extern signed short (*v16) (unsigned short, unsigned char);
void v17 (unsigned short, unsigned int, signed short, unsigned short);
void (*v18) (unsigned short, unsigned int, signed short, unsigned short) = v17;
extern signed short v19 (unsigned char, unsigned char, signed short);
extern signed short (*v20) (unsigned char, unsigned char, signed short);
extern signed int v21 (unsigned int, signed char);
extern signed int (*v22) (unsigned int, signed char);
unsigned int v23 (signed char);
unsigned int (*v24) (signed char) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (unsigned int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned short);
extern signed char v29 (signed char, signed char);
extern signed char (*v30) (signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v107 = 2;
signed int v106 = -2;
unsigned char v105 = 5;

unsigned int v23 (signed char v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = -4;
unsigned short v110 = 6;
signed char v109 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned short v112, unsigned int v113, signed short v114, unsigned short v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 7;
signed int v117 = -2;
signed char v116 = -2;
trace++;
switch (trace)
{
case 2: 
{
v25 ();
}
break;
case 4: 
{
v25 ();
}
break;
case 6: 
{
v25 ();
}
break;
case 8: 
{
v25 ();
}
break;
case 10: 
{
v25 ();
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

void v5 (signed int v119, signed int v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = 1;
signed int v122 = -4;
signed char v121 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
