#include <stdlib.h>
unsigned char v1 (unsigned char, signed int);
unsigned char (*v2) (unsigned char, signed int) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
unsigned int v5 (unsigned char);
unsigned int (*v6) (unsigned char) = v5;
unsigned int v7 (signed int);
unsigned int (*v8) (signed int) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
unsigned int v11 (unsigned char, signed char, signed short);
unsigned int (*v12) (unsigned char, signed char, signed short) = v11;
extern signed int v15 (signed int, unsigned int, signed short);
extern signed int (*v16) (signed int, unsigned int, signed short);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern signed char v21 (unsigned int, unsigned short);
extern signed char (*v22) (unsigned int, unsigned short);
extern unsigned short v23 (signed short, unsigned int);
extern unsigned short (*v24) (signed short, unsigned int);
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
extern void v27 (unsigned char, signed short, signed char, unsigned short);
extern void (*v28) (unsigned char, signed short, signed char, unsigned short);
extern unsigned short v29 (unsigned int, unsigned char, unsigned int, signed int);
extern unsigned short (*v30) (unsigned int, unsigned char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v47 = 1;
signed char v46 = -1;
unsigned short v45 = 0;

unsigned int v11 (unsigned char v48, signed char v49, signed short v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed char v53 = 1;
signed char v52 = 1;
signed int v51 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed int v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 5;
signed int v56 = 3;
signed char v55 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 1;
unsigned char v60 = 0;
signed char v59 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v62, signed int v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed int v66 = 1;
signed short v65 = -2;
unsigned int v64 = 4U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v67;
unsigned char v68;
unsigned int v69;
signed int v70;
unsigned short v71;
v67 = 3U + 6U;
v68 = 0 + v62;
v69 = v64 - v64;
v70 = v63 + v63;
v71 = v29 (v67, v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 2: 
{
signed char v72;
signed int v73;
v72 = -1 - -4;
v73 = v17 (v72);
history[history_index++] = (int)v73;
}
break;
case 14: 
return v62;
default: abort ();
}
}
}
}
