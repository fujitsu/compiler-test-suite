#include <stdio.h>
#include <stdlib.h>
static void v1 (unsigned char);
static void (*v2) (unsigned char) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
signed short v7 (unsigned short, signed short, signed char);
signed short (*v8) (unsigned short, signed short, signed char) = v7;
extern void v9 (void);
extern void (*v10) (void);
unsigned char v11 (signed short, signed char, unsigned int, signed int);
unsigned char (*v12) (signed short, signed char, unsigned int, signed int) = v11;
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern unsigned short v15 (signed char, unsigned int);
extern unsigned short (*v16) (signed char, unsigned int);
extern signed int v17 (signed short, signed int, signed char);
extern signed int (*v18) (signed short, signed int, signed char);
void v19 (signed int, signed char, signed short, signed short);
void (*v20) (signed int, signed char, signed short, signed short) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned short v23 (unsigned int);
extern unsigned short (*v24) (unsigned int);
extern void v25 (void);
extern void (*v26) (void);
static signed char v27 (signed int, signed int);
static signed char (*v28) (signed int, signed int) = v27;
extern unsigned char v29 (unsigned short, unsigned char);
extern unsigned char (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
signed char v32 = 2;
signed int v31 = -3;

static signed char v27 (signed int v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 0U;
unsigned int v37 = 1U;
signed int v36 = 3;
trace++;
switch (trace)
{
case 1: 
return -2;
default: abort ();
}
}
}
}

void v19 (signed int v39, signed char v40, signed short v41, signed short v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 4;
unsigned short v44 = 0;
signed char v43 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
unsigned char v48 = 2;
unsigned char v47 = 0;
signed int v46 = 0;
trace++;
switch (trace)
{
case 6: 
{
signed short v49;
signed int v50;
signed char v51;
signed int v52;
v49 = 2 + 3;
v50 = -3 + -2;
v51 = -2 - -2;
v52 = v17 (v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 12: 
return 4U;
default: abort ();
}
}
}
}

unsigned char v11 (signed short v53, signed char v54, unsigned int v55, signed int v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned char v59 = 3;
signed short v58 = 2;
unsigned int v57 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v60, signed short v61, signed char v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = -2;
signed char v64 = -1;
unsigned char v63 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (unsigned char v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 5;
unsigned int v68 = 1U;
unsigned short v67 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v70;
signed int v71;
signed char v72;
v70 = 2 - -3;
v71 = -2 + -1;
v72 = v27 (v70, v71);
history[history_index++] = (int)v72;
}
break;
case 2: 
{
unsigned short v73;
v73 = v5 ();
history[history_index++] = (int)v73;
}
break;
case 14: 
return;
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
unsigned char v76;
v76 = 1 + 3;
v1 (v76);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
