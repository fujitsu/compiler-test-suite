#include <stdlib.h>
unsigned int v1 (unsigned char, signed short, signed short, unsigned short);
unsigned int (*v2) (unsigned char, signed short, signed short, unsigned short) = v1;
extern void v3 (signed short, unsigned char, unsigned short);
extern void (*v4) (signed short, unsigned char, unsigned short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed int v7 (unsigned int, signed int, signed char, signed char);
extern signed int (*v8) (unsigned int, signed int, signed char, signed char);
extern signed short v9 (unsigned int, unsigned char, unsigned char);
extern signed short (*v10) (unsigned int, unsigned char, unsigned char);
extern unsigned char v11 (signed char, unsigned short);
extern unsigned char (*v12) (signed char, unsigned short);
extern void v13 (signed char, signed int);
extern void (*v14) (signed char, signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (signed char, signed int, unsigned int, unsigned char);
extern void (*v18) (signed char, signed int, unsigned int, unsigned char);
extern signed short v19 (unsigned char);
extern signed short (*v20) (unsigned char);
unsigned int v21 (signed int);
unsigned int (*v22) (signed int) = v21;
extern signed short v23 (unsigned short);
extern signed short (*v24) (unsigned short);
extern void v25 (unsigned short, unsigned int, signed int, signed int);
extern void (*v26) (unsigned short, unsigned int, signed int, signed int);
extern unsigned int v27 (unsigned short, signed short, signed char, signed char);
extern unsigned int (*v28) (unsigned short, signed short, signed char, signed char);
static unsigned short v29 (unsigned short, unsigned int);
static unsigned short (*v30) (unsigned short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v53 = 1;
signed char v52 = 2;
signed short v51 = -4;

static unsigned short v29 (unsigned short v54, unsigned int v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = 0;
unsigned int v57 = 4U;
signed int v56 = 0;
trace++;
switch (trace)
{
case 1: 
return v54;
default: abort ();
}
}
}
}

unsigned int v21 (signed int v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
signed char v62 = 0;
unsigned char v61 = 7;
unsigned int v60 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned char v63, signed short v64, signed short v65, unsigned short v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 1;
signed int v68 = 0;
signed short v67 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v70;
unsigned int v71;
unsigned short v72;
v70 = v66 + v69;
v71 = 3U - 5U;
v72 = v29 (v70, v71);
history[history_index++] = (int)v72;
}
break;
case 2: 
{
unsigned int v73;
unsigned char v74;
unsigned char v75;
signed short v76;
v73 = 5U + 7U;
v74 = 2 - 7;
v75 = 1 + 4;
v76 = v9 (v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 14: 
return 4U;
default: abort ();
}
}
}
}
