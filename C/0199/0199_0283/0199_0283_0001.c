#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned char);
extern unsigned char (*v2) (unsigned char, unsigned char);
extern unsigned int v3 (unsigned char, signed short, unsigned char, unsigned char);
extern unsigned int (*v4) (unsigned char, signed short, unsigned char, unsigned char);
extern signed short v5 (signed int, signed short, unsigned int, unsigned int);
extern signed short (*v6) (signed int, signed short, unsigned int, unsigned int);
unsigned int v7 (unsigned char, unsigned short, signed char, signed char);
unsigned int (*v8) (unsigned char, unsigned short, signed char, signed char) = v7;
void v9 (void);
void (*v10) (void) = v9;
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
unsigned short v13 (signed char, signed char, unsigned int);
unsigned short (*v14) (signed char, signed char, unsigned int) = v13;
void v15 (signed short);
void (*v16) (signed short) = v15;
extern void v17 (unsigned int, signed int);
extern void (*v18) (unsigned int, signed int);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed short v21 (signed short, signed short, signed int);
extern signed short (*v22) (signed short, signed short, signed int);
signed short v25 (unsigned short, unsigned int, unsigned int, unsigned int);
signed short (*v26) (unsigned short, unsigned int, unsigned int, unsigned int) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v47 = 0;
signed char v46 = -2;
signed int v45 = -1;

signed short v25 (unsigned short v48, unsigned int v49, unsigned int v50, unsigned int v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned short v54 = 4;
unsigned short v53 = 6;
signed char v52 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed short v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = -1;
unsigned char v57 = 2;
signed short v56 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed short v59;
signed short v60;
signed int v61;
signed short v62;
v59 = v55 + 3;
v60 = v55 - -2;
v61 = -3 + 0;
v62 = v21 (v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 5: 
{
signed short v63;
signed short v64;
signed int v65;
signed short v66;
v63 = -3 + v55;
v64 = v56 - v55;
v65 = 1 + 3;
v66 = v21 (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v13 (signed char v67, signed char v68, unsigned int v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -4;
signed short v71 = 3;
signed int v70 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
unsigned short v75 = 1;
signed short v74 = -1;
signed int v73 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v76, unsigned short v77, signed char v78, signed char v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned char v82 = 6;
signed char v81 = -3;
signed char v80 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
