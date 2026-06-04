#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern signed int v3 (unsigned short, signed short);
extern signed int (*v4) (unsigned short, signed short);
extern unsigned int v5 (signed char, signed short, signed char, unsigned int);
extern unsigned int (*v6) (signed char, signed short, signed char, unsigned int);
signed short v7 (void);
signed short (*v8) (void) = v7;
void v9 (signed char, unsigned char);
void (*v10) (signed char, unsigned char) = v9;
extern unsigned int v11 (signed int, unsigned short);
extern unsigned int (*v12) (signed int, unsigned short);
void v13 (void);
void (*v14) (void) = v13;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
unsigned short v19 (signed short);
unsigned short (*v20) (signed short) = v19;
extern unsigned short v21 (unsigned char, signed short);
extern unsigned short (*v22) (unsigned char, signed short);
signed short v23 (unsigned int);
signed short (*v24) (unsigned int) = v23;
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
extern signed char v27 (unsigned short);
extern signed char (*v28) (unsigned short);
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v40 = 5;
unsigned char v39 = 3;
unsigned char v38 = 0;

signed short v29 (void)
{
{
for (;;) {
signed short v43 = -1;
unsigned int v42 = 3U;
unsigned int v41 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (unsigned int v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 2;
unsigned short v46 = 3;
signed int v45 = 0;
trace++;
switch (trace)
{
case 7: 
return 2;
default: abort ();
}
}
}
}

unsigned short v19 (signed short v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 0U;
signed short v50 = 2;
unsigned int v49 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
signed int v54 = 0;
signed int v53 = -2;
unsigned short v52 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed char v55, unsigned char v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned int v59 = 5U;
unsigned int v58 = 4U;
unsigned short v57 = 4;
trace++;
switch (trace)
{
case 1: 
{
signed char v60;
signed short v61;
signed char v62;
unsigned int v63;
unsigned int v64;
v60 = -4 - 1;
v61 = -3 - 3;
v62 = -4 + v55;
v63 = v58 - v59;
v64 = v5 (v60, v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
signed int v67 = -3;
unsigned short v66 = 6;
signed int v65 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
