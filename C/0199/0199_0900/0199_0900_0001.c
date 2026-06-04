#include <stdlib.h>
void v1 (signed char, signed int, unsigned char);
void (*v2) (signed char, signed int, unsigned char) = v1;
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern signed char v5 (signed char, signed short, unsigned short);
extern signed char (*v6) (signed char, signed short, unsigned short);
void v7 (void);
void (*v8) (void) = v7;
void v9 (signed int, signed char, signed char, unsigned int);
void (*v10) (signed int, signed char, signed char, unsigned int) = v9;
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (signed char, signed int, signed int, signed int);
extern unsigned short (*v18) (signed char, signed int, signed int, signed int);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern void v23 (signed short, signed int, signed int);
extern void (*v24) (signed short, signed int, signed int);
extern unsigned int v25 (signed int, signed short, signed short, unsigned int);
extern unsigned int (*v26) (signed int, signed short, signed short, unsigned int);
void v27 (unsigned short, unsigned int, signed int);
void (*v28) (unsigned short, unsigned int, signed int) = v27;
void v29 (signed short, unsigned int, signed int);
void (*v30) (signed short, unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v48 = -1;
unsigned int v47 = 0U;
signed int v46 = 2;

void v29 (signed short v49, unsigned int v50, signed int v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = 2;
unsigned char v53 = 6;
unsigned short v52 = 4;
trace++;
switch (trace)
{
case 2: 
return;
default: abort ();
}
}
}
}

void v27 (unsigned short v55, unsigned int v56, signed int v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = 3;
unsigned char v59 = 1;
unsigned short v58 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v61, signed char v62, signed char v63, unsigned int v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 5;
signed char v66 = 1;
signed char v65 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
signed short v70 = -4;
unsigned char v69 = 4;
unsigned int v68 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed char v71, signed int v72, unsigned char v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned char v76 = 3;
signed int v75 = -3;
signed char v74 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v77;
signed short v78;
unsigned short v79;
signed char v80;
v77 = 1 - v74;
v78 = -3 - 1;
v79 = 6 - 6;
v80 = v5 (v77, v78, v79);
history[history_index++] = (int)v80;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}
