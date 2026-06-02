#include <stdlib.h>
extern unsigned int v1 (signed int, signed short, unsigned short, unsigned char);
extern unsigned int (*v2) (signed int, signed short, unsigned short, unsigned char);
extern signed short v3 (void);
extern signed short (*v4) (void);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
extern unsigned int v13 (signed int, unsigned int);
extern unsigned int (*v14) (signed int, unsigned int);
extern signed int v15 (signed char, signed short);
extern signed int (*v16) (signed char, signed short);
unsigned int v17 (signed int);
unsigned int (*v18) (signed int) = v17;
unsigned char v19 (unsigned char, unsigned int);
unsigned char (*v20) (unsigned char, unsigned int) = v19;
extern unsigned short v21 (unsigned short, unsigned short);
extern unsigned short (*v22) (unsigned short, unsigned short);
extern signed short v23 (signed int, unsigned int, signed int, signed char);
extern signed short (*v24) (signed int, unsigned int, signed int, signed char);
extern signed char v25 (void);
extern signed char (*v26) (void);
unsigned int v27 (unsigned char, unsigned short);
unsigned int (*v28) (unsigned char, unsigned short) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v50 = 1;
unsigned int v49 = 3U;
unsigned int v48 = 4U;

unsigned int v27 (unsigned char v51, unsigned short v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned short v55 = 4;
unsigned short v54 = 3;
unsigned short v53 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed int v56;
unsigned char v57;
v56 = 0 + -3;
v57 = v7 (v56);
history[history_index++] = (int)v57;
}
break;
case 3: 
{
signed int v58;
unsigned char v59;
v58 = 2 + 1;
v59 = v7 (v58);
history[history_index++] = (int)v59;
}
break;
case 5: 
return 2U;
default: abort ();
}
}
}
}

unsigned char v19 (unsigned char v60, unsigned int v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned short v64 = 7;
unsigned int v63 = 1U;
signed short v62 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed int v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = 2;
signed int v67 = 2;
signed char v66 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
signed short v71 = 3;
unsigned int v70 = 3U;
unsigned char v69 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
