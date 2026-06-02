#include <stdlib.h>
extern unsigned short v5 (signed int, unsigned char, unsigned int, unsigned short);
extern unsigned short (*v6) (signed int, unsigned char, unsigned int, unsigned short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed short v11 (signed char, unsigned short);
extern signed short (*v12) (signed char, unsigned short);
signed int v15 (unsigned char);
signed int (*v16) (unsigned char) = v15;
extern unsigned short v17 (signed int, unsigned short);
extern unsigned short (*v18) (signed int, unsigned short);
extern signed int v19 (signed int, unsigned short, signed int);
extern signed int (*v20) (signed int, unsigned short, signed int);
unsigned short v21 (unsigned short, unsigned int, unsigned int);
unsigned short (*v22) (unsigned short, unsigned int, unsigned int) = v21;
extern unsigned int v23 (unsigned int, signed char, unsigned char);
extern unsigned int (*v24) (unsigned int, signed char, unsigned char);
signed int v25 (signed short, signed short, signed short, signed char);
signed int (*v26) (signed short, signed short, signed short, signed char) = v25;
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v61 = 2;
signed int v60 = -2;
unsigned char v59 = 5;

signed int v25 (signed short v62, signed short v63, signed short v64, signed char v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned short v68 = 1;
signed int v67 = 2;
unsigned short v66 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned short v69, unsigned int v70, unsigned int v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = -2;
unsigned int v73 = 3U;
unsigned int v72 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned char v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = -1;
unsigned short v77 = 2;
signed char v76 = 1;
trace++;
switch (trace)
{
case 1: 
{
v29 ();
}
break;
case 7: 
return -4;
default: abort ();
}
}
}
}
