#include <stdio.h>
#include <stdlib.h>
static void v1 (void);
static void (*v2) (void) = v1;
extern unsigned int v3 (signed int, unsigned short, unsigned short, unsigned int);
extern unsigned int (*v4) (signed int, unsigned short, unsigned short, unsigned int);
extern signed short v5 (signed char, signed int);
extern signed short (*v6) (signed char, signed int);
extern signed short v7 (signed int, signed int, unsigned int, unsigned int);
extern signed short (*v8) (signed int, signed int, unsigned int, unsigned int);
void v9 (signed int, unsigned short, signed int);
void (*v10) (signed int, unsigned short, signed int) = v9;
signed char v11 (signed int, unsigned short, signed short);
signed char (*v12) (signed int, unsigned short, signed short) = v11;
extern unsigned short v13 (unsigned int, signed short, signed short, unsigned char);
extern unsigned short (*v14) (unsigned int, signed short, signed short, unsigned char);
extern unsigned short v15 (unsigned char, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v16) (unsigned char, unsigned char, unsigned short, unsigned short);
extern signed int v17 (signed char, unsigned char);
extern signed int (*v18) (signed char, unsigned char);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern signed short v21 (signed int, unsigned int, unsigned char, unsigned int);
extern signed short (*v22) (signed int, unsigned int, unsigned char, unsigned int);
extern signed short v23 (void);
extern signed short (*v24) (void);
signed short v25 (unsigned int, signed short, signed char, unsigned char);
signed short (*v26) (unsigned int, signed short, signed char, unsigned char) = v25;
extern unsigned char v27 (signed char, signed char);
extern unsigned char (*v28) (signed char, signed char);
unsigned short v29 (signed char, signed char, unsigned char);
unsigned short (*v30) (signed char, signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
unsigned short v32 = 4;
signed short v31 = 2;

unsigned short v29 (signed char v34, signed char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = 3;
unsigned short v38 = 1;
unsigned char v37 = 0;
trace++;
switch (trace)
{
case 2: 
return v38;
case 8: 
return v38;
case 10: 
return 4;
default: abort ();
}
}
}
}

signed short v25 (unsigned int v40, signed short v41, signed char v42, unsigned char v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = 2;
signed short v45 = -3;
unsigned int v44 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
signed short v49 = -2;
signed char v48 = 1;
signed int v47 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed int v50, unsigned short v51, signed short v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned char v55 = 5;
signed int v54 = -4;
unsigned short v53 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v56, unsigned short v57, signed int v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 3;
unsigned int v60 = 4U;
unsigned int v59 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (void)
{
{
for (;;) {
unsigned char v64 = 2;
unsigned short v63 = 2;
signed short v62 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed short v65;
v65 = v23 ();
history[history_index++] = (int)v65;
}
break;
case 4: 
{
signed int v66;
unsigned short v67;
unsigned short v68;
unsigned int v69;
unsigned int v70;
v66 = 1 - 1;
v67 = 2 + v63;
v68 = 3 - 6;
v69 = 7U - 1U;
v70 = v3 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 12: 
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
v1 ();
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
