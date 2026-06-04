#include <stdlib.h>
extern signed short v3 (signed int, signed int, signed int, unsigned char);
extern signed short (*v4) (signed int, signed int, signed int, unsigned char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed char v7 (signed int, signed short, signed char);
extern signed char (*v8) (signed int, signed short, signed char);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern unsigned int v11 (signed short, signed short);
extern unsigned int (*v12) (signed short, signed short);
signed char v13 (signed short);
signed char (*v14) (signed short) = v13;
void v15 (unsigned short);
void (*v16) (unsigned short) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
signed short v19 (signed short, signed char, unsigned int, unsigned int);
signed short (*v20) (signed short, signed char, unsigned int, unsigned int) = v19;
extern unsigned short v21 (signed int, signed char, signed short);
extern unsigned short (*v22) (signed int, signed char, signed short);
extern unsigned char v23 (unsigned short, signed int);
extern unsigned char (*v24) (unsigned short, signed int);
void v25 (signed short, signed char, unsigned int);
void (*v26) (signed short, signed char, unsigned int) = v25;
extern void v27 (unsigned char, unsigned short);
extern void (*v28) (unsigned char, unsigned short);
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v61 = -1;
signed int v60 = -1;
unsigned short v59 = 1;

signed char v29 (void)
{
{
for (;;) {
unsigned char v64 = 7;
signed char v63 = -2;
signed int v62 = 0;
trace++;
switch (trace)
{
case 8: 
return 3;
case 10: 
return v63;
default: abort ();
}
}
}
}

void v25 (signed short v65, signed char v66, unsigned int v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed short v70 = 2;
unsigned char v69 = 6;
signed int v68 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed short v71, signed char v72, unsigned int v73, unsigned int v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 2;
signed int v76 = 3;
unsigned short v75 = 6;
trace++;
switch (trace)
{
case 6: 
{
signed int v78;
signed char v79;
signed short v80;
unsigned short v81;
v78 = v76 + v76;
v79 = v72 + 2;
v80 = v71 - v71;
v81 = v21 (v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 12: 
return v71;
default: abort ();
}
}
}
}

void v15 (unsigned short v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = -2;
unsigned char v84 = 1;
signed short v83 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed short v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 5;
signed short v88 = 1;
signed short v87 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
