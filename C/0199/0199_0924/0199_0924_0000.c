#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed short, signed short);
extern unsigned int (*v2) (signed short, signed short);
unsigned short v3 (unsigned short);
unsigned short (*v4) (unsigned short) = v3;
extern signed int v5 (unsigned char, unsigned int);
extern signed int (*v6) (unsigned char, unsigned int);
extern void v7 (unsigned int, signed char);
extern void (*v8) (unsigned int, signed char);
extern signed int v9 (unsigned int, unsigned short, signed int);
extern signed int (*v10) (unsigned int, unsigned short, signed int);
extern unsigned short v11 (signed char, signed char);
extern unsigned short (*v12) (signed char, signed char);
extern signed char v13 (unsigned int, signed int, signed short);
extern signed char (*v14) (unsigned int, signed int, signed short);
extern signed short v15 (void);
extern signed short (*v16) (void);
static unsigned char v17 (void);
static unsigned char (*v18) (void) = v17;
void v19 (signed char, signed char, unsigned int, signed char);
void (*v20) (signed char, signed char, unsigned int, signed char) = v19;
signed char v21 (unsigned short, unsigned char, signed int, unsigned char);
signed char (*v22) (unsigned short, unsigned char, signed int, unsigned char) = v21;
extern signed char v23 (unsigned int, unsigned char, signed short, unsigned char);
extern signed char (*v24) (unsigned int, unsigned char, signed short, unsigned char);
unsigned short v25 (unsigned char, unsigned char, signed char);
unsigned short (*v26) (unsigned char, unsigned char, signed char) = v25;
void v27 (unsigned char);
void (*v28) (unsigned char) = v27;
extern signed int v29 (signed char);
extern signed int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 2;
signed char v32 = -2;
unsigned short v31 = 1;

void v27 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 2;
unsigned short v36 = 5;
signed int v35 = -3;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v38;
v38 = v17 ();
history[history_index++] = (int)v38;
}
break;
case 3: 
return;
default: abort ();
}
}
}
}

unsigned short v25 (unsigned char v39, unsigned char v40, signed char v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 0;
unsigned short v43 = 3;
unsigned short v42 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned short v45, unsigned char v46, signed int v47, unsigned char v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed char v51 = 0;
signed char v50 = -2;
signed short v49 = -4;
trace++;
switch (trace)
{
case 6: 
return 2;
case 8: 
return v50;
default: abort ();
}
}
}
}

void v19 (signed char v52, signed char v53, unsigned int v54, signed char v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 3;
unsigned char v57 = 0;
unsigned int v56 = 2U;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

static unsigned char v17 (void)
{
{
for (;;) {
signed char v61 = -3;
signed char v60 = -1;
unsigned int v59 = 7U;
trace++;
switch (trace)
{
case 2: 
return 7;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 7U;
signed int v64 = -4;
unsigned char v63 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v68;
signed short v69;
unsigned int v70;
v68 = -3 - v33;
v69 = -3 + v33;
v70 = v1 (v68, v69);
history[history_index++] = (int)v70;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
