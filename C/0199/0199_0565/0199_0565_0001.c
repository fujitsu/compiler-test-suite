#include <stdlib.h>
extern unsigned short v1 (signed char, signed char, unsigned char);
extern unsigned short (*v2) (signed char, signed char, unsigned char);
unsigned int v3 (signed int);
unsigned int (*v4) (signed int) = v3;
extern unsigned char v5 (unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned char, unsigned char);
extern unsigned char v7 (unsigned char, signed int, signed int, signed int);
extern unsigned char (*v8) (unsigned char, signed int, signed int, signed int);
signed short v9 (void);
signed short (*v10) (void) = v9;
extern unsigned char v11 (unsigned int, signed char);
extern unsigned char (*v12) (unsigned int, signed char);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern signed int v15 (signed short, signed char, unsigned int, signed char);
extern signed int (*v16) (signed short, signed char, unsigned int, signed char);
extern void v19 (signed int, signed int, unsigned char, signed char);
extern void (*v20) (signed int, signed int, unsigned char, signed char);
extern signed short v21 (signed short, unsigned int, unsigned int);
extern signed short (*v22) (signed short, unsigned int, unsigned int);
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
signed int v25 (void);
signed int (*v26) (void) = v25;
signed short v27 (unsigned short, unsigned int);
signed short (*v28) (unsigned short, unsigned int) = v27;
extern signed short v29 (unsigned short, unsigned int, signed int, unsigned char);
extern signed short (*v30) (unsigned short, unsigned int, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v42 = 2;
unsigned char v41 = 1;
unsigned char v40 = 1;

signed short v27 (unsigned short v43, unsigned int v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = -1;
unsigned char v46 = 1;
unsigned int v45 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
signed int v50 = -4;
unsigned int v49 = 6U;
unsigned short v48 = 7;
trace++;
switch (trace)
{
case 8: 
return v50;
case 10: 
{
signed short v51;
signed char v52;
unsigned int v53;
signed char v54;
signed int v55;
v51 = 2 + 3;
v52 = -1 + -3;
v53 = 4U + v49;
v54 = -3 - -3;
v55 = v15 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
signed char v58 = -1;
unsigned char v57 = 5;
signed int v56 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed int v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
signed int v62 = 1;
unsigned char v61 = 3;
signed int v60 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
