#include <stdlib.h>
extern signed int v1 (unsigned short);
extern signed int (*v2) (unsigned short);
unsigned short v3 (signed int);
unsigned short (*v4) (signed int) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
signed short v7 (unsigned int, unsigned char, signed short, signed char);
signed short (*v8) (unsigned int, unsigned char, signed short, signed char) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern unsigned int v11 (unsigned short, signed char, signed int);
extern unsigned int (*v12) (unsigned short, signed char, signed int);
unsigned char v13 (unsigned int, unsigned char, signed int, signed int);
unsigned char (*v14) (unsigned int, unsigned char, signed int, signed int) = v13;
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern void v19 (void);
extern void (*v20) (void);
extern void v21 (signed short, unsigned int);
extern void (*v22) (signed short, unsigned int);
extern unsigned short v23 (unsigned char, unsigned int);
extern unsigned short (*v24) (unsigned char, unsigned int);
unsigned int v25 (unsigned int, signed char, signed int, signed int);
unsigned int (*v26) (unsigned int, signed char, signed int, signed int) = v25;
extern void v27 (signed int);
extern void (*v28) (signed int);
extern signed short v29 (signed char, unsigned short);
extern signed short (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v57 = -3;
unsigned short v56 = 5;
signed char v55 = -3;

unsigned int v25 (unsigned int v58, signed char v59, signed int v60, signed int v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned int v64 = 2U;
unsigned int v63 = 0U;
signed int v62 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned int v65, unsigned char v66, signed int v67, signed int v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 0;
signed short v70 = -4;
unsigned int v69 = 6U;
trace++;
switch (trace)
{
case 7: 
{
signed int v72;
v72 = -1 - v68;
v27 (v72);
}
break;
case 9: 
{
signed int v73;
v73 = v68 - v67;
v27 (v73);
}
break;
case 11: 
return v66;
default: abort ();
}
}
}
}

signed short v7 (unsigned int v74, unsigned char v75, signed short v76, signed char v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned int v80 = 0U;
signed int v79 = -4;
unsigned int v78 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed int v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 4U;
signed int v83 = 2;
signed short v82 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
