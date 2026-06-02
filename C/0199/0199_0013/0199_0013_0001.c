#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern signed short v5 (unsigned char, signed int, unsigned char, unsigned int);
extern signed short (*v6) (unsigned char, signed int, unsigned char, unsigned int);
extern signed int v7 (signed short, unsigned int, signed char, signed int);
extern signed int (*v8) (signed short, unsigned int, signed char, signed int);
extern unsigned short v9 (signed short, signed char);
extern unsigned short (*v10) (signed short, signed char);
void v11 (unsigned char);
void (*v12) (unsigned char) = v11;
extern unsigned short v13 (signed char, signed char);
extern unsigned short (*v14) (signed char, signed char);
void v15 (void);
void (*v16) (void) = v15;
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed int v23 (signed short, unsigned char, signed short, signed short);
extern signed int (*v24) (signed short, unsigned char, signed short, signed short);
extern unsigned char v25 (unsigned char, unsigned char);
extern unsigned char (*v26) (unsigned char, unsigned char);
extern unsigned int v27 (signed int, signed short, unsigned short);
extern unsigned int (*v28) (signed int, signed short, unsigned short);
signed short v29 (signed short, unsigned int, unsigned char, unsigned char);
signed short (*v30) (signed short, unsigned int, unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v52 = 7U;
unsigned int v51 = 4U;
unsigned short v50 = 5;

signed short v29 (signed short v53, unsigned int v54, unsigned char v55, unsigned char v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned int v59 = 0U;
unsigned short v58 = 5;
unsigned char v57 = 2;
trace++;
switch (trace)
{
case 9: 
return v53;
case 11: 
return -1;
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
unsigned int v62 = 5U;
unsigned short v61 = 7;
unsigned short v60 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
unsigned short v65 = 1;
unsigned short v64 = 6;
signed short v63 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed int v66;
signed short v67;
unsigned short v68;
unsigned int v69;
v66 = -1 + 3;
v67 = 1 + 1;
v68 = v64 - 6;
v69 = v27 (v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 3: 
return;
default: abort ();
}
}
}
}

void v11 (unsigned char v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
signed char v73 = -2;
unsigned short v72 = 3;
signed char v71 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
