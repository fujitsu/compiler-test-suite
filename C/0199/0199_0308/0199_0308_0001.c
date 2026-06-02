#include <stdlib.h>
extern unsigned short v1 (signed int, signed char, unsigned short, signed short);
extern unsigned short (*v2) (signed int, signed char, unsigned short, signed short);
extern unsigned char v3 (unsigned short, signed int, unsigned int, unsigned short);
extern unsigned char (*v4) (unsigned short, signed int, unsigned int, unsigned short);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
static signed char v7 (signed char, signed short, signed int);
static signed char (*v8) (signed char, signed short, signed int) = v7;
unsigned char v9 (unsigned char, unsigned short, unsigned short);
unsigned char (*v10) (unsigned char, unsigned short, unsigned short) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
void v17 (unsigned short, unsigned char, unsigned char);
void (*v18) (unsigned short, unsigned char, unsigned char) = v17;
extern signed int v19 (unsigned char, unsigned short);
extern signed int (*v20) (unsigned char, unsigned short);
extern void v23 (unsigned int, unsigned char, signed int);
extern void (*v24) (unsigned int, unsigned char, signed int);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned char v29 (unsigned int, unsigned short, signed short, signed short);
extern unsigned char (*v30) (unsigned int, unsigned short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v49 = 4;
signed short v48 = -1;
signed int v47 = 1;

signed char v25 (void)
{
{
for (;;) {
unsigned char v52 = 0;
unsigned int v51 = 3U;
unsigned char v50 = 7;
trace++;
switch (trace)
{
case 7: 
return -3;
case 9: 
return 1;
case 11: 
return -2;
default: abort ();
}
}
}
}

void v17 (unsigned short v53, unsigned char v54, unsigned char v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = -4;
signed short v57 = 2;
signed short v56 = 2;
trace++;
switch (trace)
{
case 2: 
{
signed char v59;
signed short v60;
signed int v61;
signed char v62;
v59 = -2 - 3;
v60 = v56 + v57;
v61 = v58 - 3;
v62 = v7 (v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v63, unsigned short v64, unsigned short v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 1U;
unsigned char v67 = 6;
unsigned short v66 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v7 (signed char v69, signed short v70, signed int v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -3;
signed int v73 = -3;
unsigned char v72 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v75;
v75 = v27 ();
history[history_index++] = (int)v75;
}
break;
case 15: 
return v69;
default: abort ();
}
}
}
}
