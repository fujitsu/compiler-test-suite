#include <stdlib.h>
unsigned int v1 (signed short, unsigned int, signed short);
unsigned int (*v2) (signed short, unsigned int, signed short) = v1;
extern void v3 (unsigned char, signed int);
extern void (*v4) (unsigned char, signed int);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern signed short v7 (unsigned char, signed short, unsigned char, unsigned int);
extern signed short (*v8) (unsigned char, signed short, unsigned char, unsigned int);
extern signed int v9 (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed int (*v10) (unsigned int, unsigned int, unsigned int, unsigned char);
signed short v11 (signed short, signed short);
signed short (*v12) (signed short, signed short) = v11;
unsigned int v13 (signed short, unsigned int, unsigned short);
unsigned int (*v14) (signed short, unsigned int, unsigned short) = v13;
extern void v15 (unsigned short, signed short, unsigned int, unsigned short);
extern void (*v16) (unsigned short, signed short, unsigned int, unsigned short);
extern unsigned char v17 (unsigned int, unsigned int, unsigned char);
extern unsigned char (*v18) (unsigned int, unsigned int, unsigned char);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern void v21 (signed short, signed short, unsigned short, signed int);
extern void (*v22) (signed short, signed short, unsigned short, signed int);
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (unsigned char, signed short);
extern signed int (*v28) (unsigned char, signed short);
signed int v29 (unsigned int);
signed int (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v47 = 7;
signed short v46 = -2;
signed short v45 = 3;

signed int v29 (unsigned int v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 6;
signed int v50 = -1;
signed char v49 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed short v52, unsigned int v53, unsigned short v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed char v57 = -4;
unsigned int v56 = 6U;
signed char v55 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed short v58, signed short v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 0U;
signed int v61 = 2;
unsigned short v60 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed short v63, unsigned int v64, signed short v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 7U;
unsigned int v67 = 0U;
signed int v66 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed int v69;
unsigned short v70;
v69 = v66 - v66;
v70 = v19 (v69);
history[history_index++] = (int)v70;
}
break;
case 18: 
return v64;
default: abort ();
}
}
}
}
