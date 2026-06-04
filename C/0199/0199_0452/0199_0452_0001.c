#include <stdlib.h>
unsigned int v1 (signed char, signed int, unsigned char, unsigned short);
unsigned int (*v2) (signed char, signed int, unsigned char, unsigned short) = v1;
extern signed int v3 (unsigned int);
extern signed int (*v4) (unsigned int);
extern signed int v5 (signed int, signed short, signed short, signed short);
extern signed int (*v6) (signed int, signed short, signed short, signed short);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern void v9 (signed int, signed char, unsigned short);
extern void (*v10) (signed int, signed char, unsigned short);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
signed int v15 (unsigned int);
signed int (*v16) (unsigned int) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed short v19 (signed short, unsigned short);
extern signed short (*v20) (signed short, unsigned short);
signed char v21 (unsigned char, unsigned char, signed short, signed int);
signed char (*v22) (unsigned char, unsigned char, signed short, signed int) = v21;
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern signed char v25 (unsigned short, unsigned int, unsigned short, unsigned int);
extern signed char (*v26) (unsigned short, unsigned int, unsigned short, unsigned int);
extern unsigned char v27 (signed short, signed char);
extern unsigned char (*v28) (signed short, signed char);
extern signed short v29 (signed char, signed short);
extern signed short (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v58 = -2;
signed short v57 = -1;
unsigned char v56 = 1;

signed char v21 (unsigned char v59, unsigned char v60, signed short v61, signed int v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed char v65 = 3;
unsigned short v64 = 6;
unsigned char v63 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned int v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 5;
signed short v68 = 2;
signed char v67 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
signed char v72 = 2;
unsigned short v71 = 4;
signed char v70 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed char v73, signed int v74, unsigned char v75, unsigned short v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = -2;
signed int v78 = -4;
signed short v77 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v80;
signed int v81;
v80 = 5U - 6U;
v81 = v3 (v80);
history[history_index++] = (int)v81;
}
break;
case 4: 
{
unsigned int v82;
signed int v83;
v82 = 0U + 6U;
v83 = v3 (v82);
history[history_index++] = (int)v83;
}
break;
case 16: 
return 4U;
default: abort ();
}
}
}
}
