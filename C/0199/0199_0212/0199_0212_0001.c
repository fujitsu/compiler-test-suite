#include <stdlib.h>
unsigned char v1 (unsigned char, unsigned char);
unsigned char (*v2) (unsigned char, unsigned char) = v1;
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
unsigned short v5 (signed short, signed int);
unsigned short (*v6) (signed short, signed int) = v5;
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
extern signed int v9 (signed short, signed char);
extern signed int (*v10) (signed short, signed char);
extern void v11 (unsigned short, signed char, signed int);
extern void (*v12) (unsigned short, signed char, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern signed short v17 (signed int, signed short, signed int);
extern signed short (*v18) (signed int, signed short, signed int);
extern unsigned int v19 (unsigned char, unsigned char, signed int);
extern unsigned int (*v20) (unsigned char, unsigned char, signed int);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
unsigned int v23 (signed int, signed int, unsigned int);
unsigned int (*v24) (signed int, signed int, unsigned int) = v23;
extern unsigned short v25 (unsigned short, signed char, unsigned short, unsigned short);
extern unsigned short (*v26) (unsigned short, signed char, unsigned short, unsigned short);
extern signed char v27 (unsigned char, unsigned char, unsigned short, unsigned int);
extern signed char (*v28) (unsigned char, unsigned char, unsigned short, unsigned int);
extern signed int v29 (unsigned char, unsigned int, signed short);
extern signed int (*v30) (unsigned char, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v48 = 0;
signed int v47 = 1;
unsigned short v46 = 2;

unsigned int v23 (signed int v49, signed int v50, unsigned int v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = 0;
unsigned short v53 = 1;
signed int v52 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned short v57 = 3;
signed int v56 = 2;
signed char v55 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed short v58, signed int v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed int v62 = -3;
unsigned short v61 = 7;
signed int v60 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v63, unsigned char v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 7U;
unsigned char v66 = 6;
signed short v65 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v68;
signed char v69;
signed int v70;
v68 = 2 - 6;
v69 = -3 + -3;
v70 = -2 + -2;
v11 (v68, v69, v70);
}
break;
case 14: 
return v63;
default: abort ();
}
}
}
}
