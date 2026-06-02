#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
signed short v3 (signed int, signed short);
signed short (*v4) (signed int, signed short) = v3;
extern unsigned short v5 (signed int, unsigned int, unsigned short, unsigned int);
extern unsigned short (*v6) (signed int, unsigned int, unsigned short, unsigned int);
extern signed char v7 (signed short, signed char, unsigned int, signed char);
extern signed char (*v8) (signed short, signed char, unsigned int, signed char);
unsigned char v9 (unsigned short, signed char, unsigned char, unsigned char);
unsigned char (*v10) (unsigned short, signed char, unsigned char, unsigned char) = v9;
extern unsigned char v11 (signed int, signed int);
extern unsigned char (*v12) (signed int, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
unsigned short v15 (signed char, signed int, signed int);
unsigned short (*v16) (signed char, signed int, signed int) = v15;
unsigned int v17 (signed int);
unsigned int (*v18) (signed int) = v17;
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern unsigned char v21 (signed int, unsigned int);
extern unsigned char (*v22) (signed int, unsigned int);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned short v27 (unsigned char, signed int, unsigned int);
extern unsigned short (*v28) (unsigned char, signed int, unsigned int);
extern void v29 (signed char, signed int);
extern void (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v48 = 4;
unsigned char v47 = 4;
unsigned int v46 = 3U;

unsigned int v17 (signed int v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 5U;
unsigned char v51 = 0;
unsigned short v50 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed char v53, signed int v54, signed int v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 4;
unsigned short v57 = 3;
unsigned short v56 = 2;
trace++;
switch (trace)
{
case 11: 
return v56;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned short v59, signed char v60, unsigned char v61, unsigned char v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 6;
signed short v64 = -2;
signed int v63 = -2;
trace++;
switch (trace)
{
case 1: 
return 5;
default: abort ();
}
}
}
}

signed short v3 (signed int v66, signed short v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = 1;
unsigned short v69 = 5;
unsigned int v68 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
